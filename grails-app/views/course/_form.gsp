<%@ page import="takeaway.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${courseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'professor', 'error')} ">
	<label for="professor">
		<g:message code="course.professor.label" default="Professor" />
		
	</label>
	<g:textField name="professor" value="${courseInstance?.professor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'sessions', 'error')} ">
	<label for="sessions">
		<g:message code="course.sessions.label" default="Sessions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.sessions?}" var="s">
    <li><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="session" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'session.label', default: 'Session')])}</g:link>
</li>
</ul>

</div>

