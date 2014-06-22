
<%@ page import="takeaway.Session" %>
<!DOCTYPE html>
<html>
	<head>
        <meta name="layout" content="main">
	</head>
	<body>


    <div class="container">
		<div  class="jumbotron" >
			<h1>  ${sessionInstance.course}  </h1>
            <h2> ${sessionInstance.date.format("dd-MMM-yy")} </h2>
		</div>

            %{--

               <ol class="property-list session">
                <g:if test="${sessionInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="session.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${sessionInstance?.course?.id}">${sessionInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="session.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate format="dd-MMM-yy" date="${sessionInstance?.date}" /></span>
					
				</li>
				</g:if>

			--}%

               <div class="row marketing">
                <div class="col-md-6 col-md-offset-3">
                    <div class="input-group input-group-lg">
                        <form action="/takeaway/note/save" class="input-group input-group-lg" method="post">
                            <input type="hidden"  name="course.id"  value="${sessionInstance?.course?.id}" />
                            <input type="hidden"  name="session.id"  value="${sessionInstance?.id}" />
                            <input type="hidden"  name="user.id"  value="1" />

                        <input type="text" name="text" class="form-control">
                        <span class="input-group-addon"><button class="btn-group btn-success" type="submit" name="create" value="Create">post</button></span>
                        </input>
                        </form>
                        </div>
				<g:if test="${sessionInstance?.notes}">
                    <ul class="list-group">

				%{--	<span id="notes-label" class="property-label"><g:message code="session.notes.label" default="Notes" /></span>
					--}%
						<g:each in="${sessionInstance.notes}" var="n">
                            <li class="list-group-item">
                                ${n?.encodeAsHTML()}
						%{--<span class="property-value" aria-labelledby="notes-label"><g:link controller="note" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>  --}%
                            </li>
                        </g:each>
					

				</g:if>

                </ul>

		</div>
    </div>
    </div>
	</body>
</html>
