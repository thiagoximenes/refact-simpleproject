<%@taglib tagdir="/WEB-INF/tags" prefix="alert"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="author" content="Thiago Carneiro Ximenes" /> -->
<!-- <meta name="reply-to" content="thiagoximenesfhrc@gmail.com" /> -->
<%-- <meta name="description" content="<fmt:message key='meta.description'/>" /> --%>
<!-- <meta name="keywords" content="vraptor, restaurante, desenvolvimento, development, java, hibernate" /> -->

<!-- <title>Blank Project</title> -->

<%-- <link rel="shortcut icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>
<%-- <link rel="icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>

<!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Exo+2:400,600" rel="stylesheet"> -->

<%-- <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" /> --%>
<%-- <link href="<c:url value="/css/estilo.css"/>" rel="stylesheet" type="text/css" /> --%>

<!-- <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> -->
<%-- <script type="text/javascript" src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script> --%>
<!-- </head> -->

<!-- <body class="login-out"> -->


<%@ include file="../../header.jsp"%>


<form class="form-signin" method="post" action="${linkTo[LoginController].autentica(null, null)}">
	<div class="mb-4">
		<h1 class="h3 mb-3 font-weight-normal text-center">SIMPLE PROJECT</h1>
		<div class="text-11">
		<p>Vraptor simple project <code>:powered by Thiago Ximenes</code>.<hr>
		1- Create a database, with the name <strong>simpleproject</strong>.
		<br/>2- Run the server, and make a login (just try) for hibernate instantiate columns.
		<br/>3- Now, insert this query: <code>INSERT INTO Usuario (nome,sobrenome,login,senha,email,tipo) values ('Administrator','User','admin','admin','youraddress@somemail.com','ADMIN');</code>
		<br/>4- Restart server, and make login with credentials, User: <code>admin</code>, and Password: <code>admin</code>.</p>
		</div>
	</div>

	<div class="form-label-group mb-2">
		<label for="login">Username</label>
		<input type="text" id="login" name="login" class="form-control" placeholder="Your username or email." autocomplete="off" required autofocus>
	</div>

	<div class="form-label-group mb-2">
		<label for="senha">Password</label>
		<input type="password" id="senha" name="senha" class="form-control" placeholder="*********" autocomplete="off" required>
	</div>

	<div class="checkbox mb-3">
		<label>
		<input type="checkbox" value="remember-me"> Remember me
		</label>
	</div>
	<input class="btn btn-lg btn-primary btn-block" name="commit" tabindex="3" type="submit" value="Login">
	<p class="mt-5 mb-3 text-muted text-center login-out-newacc"> Don't have access? <a href="#" data-toggle="modal" data-target="#myModal">Contact us</a>.</p>
</form>


<!-- CORPO -->


	<c:forEach var="erro" items="${errors}">
		<alert:validationMessage name="login_invalido" />
	</c:forEach>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">x</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
					Entre em contato com <a href="mailto:thiagoximenesfhrc@gmail.com">thiagoximenesfhrc@gmail.com</a>.<br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Endof Modal -->

<%@ include file="../../footer.jsp"%>