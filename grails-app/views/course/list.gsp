
<%@ page import="takeaway.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		%{--<title><g:message code="default.list.label" args="[entityName]" /></title>--}%
	</head>
	<body>
		%{--<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
    %{--content scaffold-list--}%
		<div id="list-course" class="jumbotron" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			%{--<table>--}%
				%{--<thead>--}%
					%{--<tr>--}%
					%{----}%
						%{--<g:sortableColumn property="name" title="${message(code: 'course.name.label', default: 'Name')}" />--}%
					%{----}%
						%{--<g:sortableColumn property="professor" title="${message(code: 'course.professor.label', default: 'Professor')}" />--}%
					%{----}%
					%{--</tr>--}%
				%{--</thead>--}%
              <div class="container" accesskey="">
                <div class="row">

				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					%{--
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					--}%

                    <div class="col-md-4">
                        <g:link action="show" id="${courseInstance.id}" class="thumbnail">
                           <h2>${courseInstance.name}</h2>
                            </g:link>
                        </a>
                    </div>

                             %{--<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "name")}</g:link></td>--}%
					%{----}%
						%{--<td>${fieldValue(bean: courseInstance, field: "professor")}</td>--}%
					%{----}%
					%{--</tr>--}%
				</g:each>
                    </div>

              </div>
			%{--<div class="pagination">--}%
				%{--<g:paginate total="${courseInstanceTotal}" />--}%
			%{--</div>--}%
		</div>
	</body>
</html>
