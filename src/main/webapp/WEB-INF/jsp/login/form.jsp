<%@taglib tagdir="/WEB-INF/tags" prefix="alert"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../header.jsp"%>

<div class="container-fluid mt-3 mb-3">
	<div class="row">
		<div class="col">
		</div>
		<div class="col-lg-4 col-sm-12 align-self-center">
			<h3 class="font-weight-normal text-center">VRAPTOR SIMPLE PROJECT</h3>
			<p class="text-center" style="border-bottom: 1px solid #f0f0f0; margin-bottom: 1.5rem; padding-bottom: 1.5rem;"><code>:powered by Thiago Ximenes</code>.
			<form class="form-signin" method="post" action="${linkTo[LoginController].autentica(null, null)}">
				<div class="form-label-group mb-3">
					<label for="login">Username</label>
					<input type="text" id="login" name="login" class="form-control" placeholder="Your username or email." autocomplete="off" required autofocus>
				</div>
				<div class="form-label-group mb-3">
					<label for="senha">Password</label>
					<input type="password" id="senha" name="senha" class="form-control" placeholder="*********" autocomplete="off" required>
				</div>
				<div class="checkbox mb-3">
					<label>
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div>
				<div class="form-group mb-3">
					<input class="btn btn-primary btn-block mb-3" name="commit" tabindex="3" type="submit" value="Login">
<!-- 					<p class="text-muted text-center login-out-newacc"> Don't have access? <a href="#" data-toggle="modal" data-target="#myModal">Contact us</a>.</p> -->
					<p class="text-muted text-center login-out-newacc"> Don't have access? <a href="#" id="login-contact-us">Contact us</a>.</p>
				</div>
			</form>
			<div style="border-top: 1px solid #f0f0f0; margin-top: 1.5rem; padding-top: 1.0rem;">
				<small class="text-muted">
					1- Create a database, with the name <strong>simpleproject</strong>.
					<br/>2- Run the server, and make a login (just try) for hibernate instantiate columns.
					<br/>3- Now, insert this query: <br/><code>INSERT INTO Usuario (nome,sobrenome,login,senha,email,tipo) values ('Administrator','User','admin','admin', 'youraddress@somemail.com','ADMIN');</code>
					<br/>4- Restart server, and make login with credentials, User: <code>admin</code>, and Password: <code>admin</code>.</p>
				</small>
			</div>
		</div>
		<div class="col">
		</div>
	</div>
</div>
		
		

<div class="container-fluid">
	<div class="row">
		<div class="col">
		</div>
		<div class="col-lg-4 col-sm-12 align-self-center">
			<div class="mb-4">
			</div>
		</div>
		<div class="col">
		</div>
	</div>
</div>

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