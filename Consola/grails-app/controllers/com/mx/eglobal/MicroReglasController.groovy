package com.mx.eglobal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MicroReglasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MicroReglas.list(params), model:[microReglasInstanceCount: MicroReglas.count()]
    }

    def show(MicroReglas microReglasInstance) {
        respond microReglasInstance
    }

    def create() {
        respond new MicroReglas(params)
    }

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

    def edit(MicroReglas microReglasInstance) {
        respond microReglasInstance
    }

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
