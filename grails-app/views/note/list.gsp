
<%@ page import="takeaway.Note" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'note.label', default: 'Note')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-note" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-note" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="note.course.label" default="Course" /></th>
					
						<th><g:message code="note.session.label" default="Session" /></th>
					
						<g:sortableColumn property="text" title="${message(code: 'note.text.label', default: 'Text')}" />
					
						<th><g:message code="note.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noteInstanceList}" status="i" var="noteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noteInstance.id}">${fieldValue(bean: noteInstance, field: "course")}</g:link></td>
					
						<td>${fieldValue(bean: noteInstance, field: "session")}</td>
					
						<td>${fieldValue(bean: noteInstance, field: "text")}</td>
					
						<td>${fieldValue(bean: noteInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${noteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
