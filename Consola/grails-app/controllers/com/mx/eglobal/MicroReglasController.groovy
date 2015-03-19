package com.mx.eglobal


import grails.plugin.springsecurity.annotation.Secured;
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MicroReglasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MicroReglas.list(params), model:[microReglasInstanceCount: MicroReglas.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def show(MicroReglas microReglasInstance) {
        respond microReglasInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new MicroReglas(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(MicroReglas microReglasInstance) {
        if (microReglasInstance == null) {
            notFound()
            return
        }

        if (microReglasInstance.hasErrors()) {
            respond microReglasInstance.errors, view:'create'
            return
        }

        microReglasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'microReglas.label', default: 'MicroReglas'), microReglasInstance.id])
                redirect microReglasInstance
            }
            '*' { respond microReglasInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(MicroReglas microReglasInstance) {
        respond microReglasInstance
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(MicroReglas microReglasInstance) {
        if (microReglasInstance == null) {
            notFound()
            return
        }

        if (microReglasInstance.hasErrors()) {
            respond microReglasInstance.errors, view:'edit'
            return
        }

        microReglasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MicroReglas.label', default: 'MicroReglas'), microReglasInstance.id])
                redirect microReglasInstance
            }
            '*'{ respond microReglasInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(MicroReglas microReglasInstance) {

        if (microReglasInstance == null) {
            notFound()
            return
        }

        microReglasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MicroReglas.label', default: 'MicroReglas'), microReglasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'microReglas.label', default: 'MicroReglas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
