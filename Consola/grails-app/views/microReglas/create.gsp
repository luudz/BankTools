<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'microReglas.label', default: 'MicroReglas')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<script>
$(document).ready(function() {
    $('.palette .add').click(function(e) {
        var options = $('select.unselected option:selected');
        $('select.selected').append(options);
        e.preventDefault();
        return false;
    });
    $('.palette .remove').click(function(e) {
        var options = $('select.selected option:selected');
        $('select.unselected').append(options);
        e.preventDefault();
        return false;
    });
    $('.palette .down').click(function(e) {
        var options = $('select.selected option:selected');
        options.last().next().after(options)
        e.preventDefault();
        return false;
    });
    $('.palette .up').click(function(e) {
        var options = $('select.selected option:selected');
        options.first().prev().before(options)
        e.preventDefault();
        return false;
    });
});
</script>		<a href="#create-microReglas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-microReglas" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${microReglasInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${microReglasInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:microReglasInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
