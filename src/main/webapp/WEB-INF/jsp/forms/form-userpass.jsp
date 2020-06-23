<%-- <%@ taglib tagdir="/WEB-INF/tags" prefix="ct"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${user.id != null}">
<form class="form-style" action="<c:url value="/users/${user.id}"/>" method="POST">
	<input type="hidden" name="user.id" value="${user.id}" required />
	<input type="hidden" name="user.name" value="${user.name}" /> 
	<input type="hidden" name="user.surname" value="${user.surname}" />
	<input type="hidden" name="user.email" value="${user.email}" />
	<input type="hidden" name="user.login" value="${user.login}" />
	<input type="hidden" name="user.type" value="${user.type}" />
</c:if>

<c:if test="${user.id == null}">
<form class="form-style" action="<c:url value="/users/${loggedUser.user.id}"/>" method="POST">
	<input type="hidden" name="usuario.id" value="${loggedUser.user.id}" required />
	<input type="hidden" name="usuario.name" value="${loggedUser.user.name}" /> 
	<input type="hidden" name="usuario.surname" value="${loggedUser.user.surname}" />
	<input type="hidden" name="usuario.email" value="${loggedUser.user.email}" />
	<input type="hidden" name="usuario.login" value="${loggedUser.user.login}" />
	<input type="hidden" name="usuario.type" value="${loggedUser.user.type}" />
</c:if>

	<div class="row">
		<div class="col-sm-12">
			<label for="senha_nova">New password:</label>
			<input type="password" id="senha_nova" name="senha_nova" class="form-control" required />
		</div>
	</div>

	<div class="row">
		<div class="col-sm-12">
			<label for="rep_senha_nova">Repeat new password:</label> 
				<input type="password" id="rep_senha_nova" name="user.password" class="form-control" required />
		</div>
	</div>

	<div class="row invis" id="msgErro-alteraSenha">
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissible fade in" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">x</span>
				</button>
				<strong>Attention!</strong> Attention!
			</div>
		</div>
	</div>

	<div class="row  invis" id="msgErro-qtddLetrasSenha">
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissible fade in" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">x</span>
				</button>
				<strong>Attention!</strong> You need min 4 and max 30 characters.
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-12">
			<button id="alterar-senha-btn" class="btn btn-primary" type="submit" name="_method" value="PUT">
				Change password
			</button>
		</div>
	</div>
</form>


