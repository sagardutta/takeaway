<%@ page import="takeaway.Session" %>



<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="session.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${takeaway.Course.list()}" optionKey="id" required="" value="${sessionInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="session.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${sessionInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="session.notes.label" default="Notes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sessionInstance?.notes?}" var="n">
    <li><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="note" action="create" params="['session.id': sessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'note.label', default: 'Note')])}</g:link>
</li>
</ul>

</div>

