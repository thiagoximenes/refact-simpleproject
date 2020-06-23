<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../header.jsp"%>

<div class="container-fluid">
	<div class="header">
		<div class="row align-items-end mb-3">
			<div class="col">
				<h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="${linkTo[IndexController].dashboard() }">Dashboard</a></li>
							<c:if test="${loggedUser.user.type == 'ADMIN' }">
								<li class="breadcrumb-item" aria-current="page"><a href="${linkTo[UserController].list() }">Users</a></li>
							</c:if>
							<li class="breadcrumb-item" aria-current="page"><a href="${linkTo[UserController].perfil() }">Perfil</a></li>
							<li class="breadcrumb-item active" aria-current="page">Edit</li>
						</ol>
					</nav>
				</h6>
				<h4>Edit user records</h4>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="content">
		<div class="row align-items-end">
			<div class="col">
				<form class="form-style form-basic" action="<c:url value="/users/perfilupdate"/>" method="post">
					<c:import url="../forms/form-user-perfil.jsp"></c:import>
					<button class="btn btn-primary" type="submit" name="_method" value="PUT">Update</button>
					<a type="button" class="btn btn-dark" href="${linkTo[UserController].perfil()}" data-toggle="tooltip" data-placement="bottom" title="Back to list">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>
					</a>
				</form>
			</div>
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
				<h4 class="modal-title" id="myModalLabel">Update password</h4>
			</div>
			<div class="modal-body">
				<c:import url="../forms/form-userpass-perfil.jsp"></c:import>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
