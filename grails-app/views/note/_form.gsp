<%@ page import="takeaway.Note" %>



<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="note.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${takeaway.Course.list()}" optionKey="id" required="" value="${noteInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'session', 'error')} required">
	<label for="session">
		<g:message code="note.session.label" default="Session" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="session" name="session.id" from="${takeaway.Session.list()}" optionKey="id" required="" value="${noteInstance?.session?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="note.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${noteInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: noteInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="note.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${takeaway.User.list()}" optionKey="id" required="" value="${noteInstance?.user?.id}" class="many-to-one"/>
</div>

