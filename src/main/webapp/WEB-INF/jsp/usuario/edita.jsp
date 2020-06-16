<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp"%>

<div class="header-body pt-3 pb-3">
	<div class="row align-items-end">
		<div class="col-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a
						href="${linkTo[IndexController].dashboard() }">Dashboard</a></li>
					<li class="breadcrumb-item" aria-current="page"><a
						href="${linkTo[UsuarioController].lista() }">Users</a></li>
					<li class="breadcrumb-item active" aria-current="page">Edit</li>
				</ol>
			</nav>
		</div>
		<div class="col">
			<h4>Edit user</h4>
		</div>
	</div>
</div>

<div class="content">
	<div class="row align-items-end">
		<div class="col">
			<form class="form-style form-basic" action="<c:url value="/usuarios/${usuario.id}"/>" method="post">
				<c:import url="../forms/form-usuario.jsp"></c:import>
				<button class="btn btn-success" type="submit" name="_method" value="PUT">Alterar</button>
				<a type="button" class="btn btn-dark" href="${linkTo[UsuarioController].lista()}" data-toggle="tooltip" data-placement="bottom" title="Back to list">
					<i class="fa fa-arrow-left" aria-hidden="true"></i>
				</a>
			</form>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header titulo1-insta">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Change password</h4>
			</div>
			<div class="modal-body">
				<c:import url="../forms/form-usuario-alterasenha2.jsp"></c:import>
			</div>
		</div>
	</div>
</div>



<%@ include file="../../footer.jsp"%>
