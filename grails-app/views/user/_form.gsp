<%@ page import="takeaway.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'courses', 'error')} ">
	<label for="courses">
		<g:message code="user.courses.label" default="Courses" />
		
	</label>
	<g:select name="courses" from="${takeaway.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.courses*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'handle', 'error')} ">
	<label for="handle">
		<g:message code="user.handle.label" default="Handle" />
		
	</label>
	<g:textField name="handle" value="${userInstance?.handle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="user.notes.label" default="Notes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.notes?}" var="n">
    <li><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="note" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'note.label', default: 'Note')])}</g:link>
</li>
</ul>

</div>

