package com.mx.eglobal

import grails.plugin.springsecurity.annotation.Secured;



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VariableController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Variable.list(params), model:[variableInstanceCount: Variable.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def show(Variable variableInstance) {
        respond variableInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Variable(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Variable variableInstance) {
        if (variableInstance == null) {
            notFound()
            return
        }

        if (variableInstance.hasErrors()) {
            respond variableInstance.errors, view:'create'
            return
        }

        variableInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'variable.label', default: 'Variable'), variableInstance.id])
                redirect variableInstance
            }
            '*' { respond variableInstance, [status: CREATED] }
        }
    }

   @Secured(['ROLE_ADMIN']) 
    def edit(Variable variableInstance) {
        respond variableInstance
    }

    @Transactional
    def update(Variable variableInstance) {
        if (variableInstance == null) {
            notFound()
            return
        }

        if (variableInstance.hasErrors()) {
            respond variableInstance.errors, view:'edit'
            return
        }

        variableInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Variable.label', default: 'Variable'), variableInstance.id])
                redirect variableInstance
            }
            '*'{ respond variableInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Variable variableInstance) {

        if (variableInstance == null) {
            notFound()
            return
        }

        variableInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Variable.label', default: 'Variable'), variableInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'variable.label', default: 'Variable'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
