package com.mx.eglobal

import grails.plugin.springsecurity.annotation.Secured;



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CatalogoVariablesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CatalogoVariables.list(params), model:[catalogoVariablesInstanceCount: CatalogoVariables.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def show(CatalogoVariables catalogoVariablesInstance) {
        respond catalogoVariablesInstance
    }
    
    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new CatalogoVariables(params)
    }

    @Transactional
    def save(CatalogoVariables catalogoVariablesInstance) {
        if (catalogoVariablesInstance == null) {
            notFound()
            return
        }

        if (catalogoVariablesInstance.hasErrors()) {
            respond catalogoVariablesInstance.errors, view:'create'
            return
        }

        catalogoVariablesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'catalogoVariables.label', default: 'CatalogoVariables'), catalogoVariablesInstance.id])
                redirect catalogoVariablesInstance
            }
            '*' { respond catalogoVariablesInstance, [status: CREATED] }
        }
    }

    def edit(CatalogoVariables catalogoVariablesInstance) {
        respond catalogoVariablesInstance
    }

    @Transactional
    def update(CatalogoVariables catalogoVariablesInstance) {
        if (catalogoVariablesInstance == null) {
            notFound()
            return
        }

        if (catalogoVariablesInstance.hasErrors()) {
            respond catalogoVariablesInstance.errors, view:'edit'
            return
        }

        catalogoVariablesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CatalogoVariables.label', default: 'CatalogoVariables'), catalogoVariablesInstance.id])
                redirect catalogoVariablesInstance
            }
            '*'{ respond catalogoVariablesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CatalogoVariables catalogoVariablesInstance) {

        if (catalogoVariablesInstance == null) {
            notFound()
            return
        }

        catalogoVariablesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CatalogoVariables.label', default: 'CatalogoVariables'), catalogoVariablesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'catalogoVariables.label', default: 'CatalogoVariables'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
