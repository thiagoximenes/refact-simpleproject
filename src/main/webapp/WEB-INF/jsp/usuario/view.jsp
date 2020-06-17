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
					<li class="breadcrumb-item active" aria-current="page">View ${usuario.id}</li>
				</ol>
			</nav>
		</div>
		<div class="col">
			<h4>Users View</h4>
		</div>
	</div>
</div>

<div class="content">
	<div class="card">
		<div class="card-body profile-user-box">
			<div class="row">
				<div class="col-sm-8">
					<div class="media">
						<span class="float-left m-2 mr-4"> <img
							style="height: 100px;" class="rounded-circle img-thumbnail"
							src="<c:url value="/img/profile.png"/>" />
						</span>
						<div class="media-body">
							<input type="hidden" id="bs-senha" class="invis" value="${usuario.senha}" />
							<h4 class="my-1">${usuario.nome} ${usuario.sobrenome}</h4>
							<p class="font-13 text-muted">${usuario.email}</p>
							<p class="font-13">
								<c:if test="${usuario.tipo=='ADMIN'}">
	                        		Full access <span class="badge badge-warning">Admin Master</span>
								</c:if>
								<c:if test="${usuario.tipo=='NORMAL'}">
	                        		Limited access 
	                        		<span class="badge badge-secondary">User</span>
								</c:if>
							</p>
							<p class="font-13">
								Login: ${usuario.login} | Password: ********** (<a href="" data-toggle="modal" data-target="#myModal">change</a>)
							</p>
						</div>
						<!-- end media-body-->
					</div>
				</div>
				<!-- end col-->

				<div class="col-sm-4">
					<div class="text-center mt-sm-0 mt-3 text-sm-right">
						<a href="<c:url value='/usuarios/${usuario.id}'/>" class="btn btn-light">
							Edit User
						</a>
                        <c:if test="${usuarioLogado.usuario.id != usuario.id}">
							<a href="javascript:;" class="btn btn-light deletarProduto" data-href="<c:url value='/usuario/remove?usuario.id=${usuario.id}'/>">
								Delete User
							</a>
						</c:if>
					</div>
				</div>
				<!-- end col-->
			</div>
			<!-- end row -->
		</div>
		<!-- end card-body/ profile-user-box-->
	</div>
</div>

<!-- 		Change password modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header titulo1-insta">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Change password</h4>
			</div>
			<div class="modal-body">
				<c:import url="../forms/form-usuario-alterasenha.jsp"></c:import>
			</div>
		</div>
	</div>
</div>
<!-- 		End of modal -->

<%@ include file="../../footer.jsp"%>


