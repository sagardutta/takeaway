
<%@ page import="takeaway.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">

		%{--<title><g:message code="default.show.label" args="[entityName]" /></title>--}%
	</head>
	<body>
        <div class="container" >

            <div class="jumbotron">

              <h1>
                  ${courseInstance?.name}
              </h1>

			 </div>
                   <div class="row-markenting">
				<g:if test="${courseInstance?.sessions}">

                    <div class="list-group col-md-6" >

                        <g:each status='i' in="${courseInstance.sessions}" var="s">
                            <g:link class="list-group-item" controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link>
                        </g:each>
                    </div>

				</g:if>


		</div>
        </div>
	</body>
</html>
