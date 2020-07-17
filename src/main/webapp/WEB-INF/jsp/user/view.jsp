<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../header.jsp"%>

<div class="container-fluid">
	<div class="header">
		<div class="row align-items-end mb-3">
			<div class="col">
				<h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${linkTo[IndexController].dashboard() }">Dashboard</a></li>
							<li class="breadcrumb-item" aria-current="page"><a
								href="${linkTo[UserController].list() }">Users</a></li>
							<li class="breadcrumb-item active" aria-current="page">View ${usuario.id}</li>
						</ol>
					</nav>
				</h6>
				<h4>Individual user records - ID [${user.id}]</h4>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="content">
		<div class="card">
			<div class="card-body md-card">
				<div class="row">
					<div class="col-sm-8">
						<div class="media">
							<span class="float-left m-2 mr-4">
								<img class="rounded-circle img-thumbnail" src="<c:url value="/img/profile.png"/>" />
							</span>
							<div class="media-body">
								<input type="hidden" id="bs-senha" class="invis" value="${user.password}" />
								<h4 class="my-1">${user.name} ${user.surname}</h4>
								<p class="text-muted">${user.email}</p>
								<p>
									<c:if test="${user.type=='ADMIN'}">
		                        		Full access <span class="badge badge-warning">Admin Master</span>
									</c:if>
									<c:if test="${usuario.tipo=='NORMAL'}">
		                        		Limited access 
		                        		<span class="badge badge-secondary">User</span>
									</c:if>
								</p>
								<p>
									Login: ${usuario.login} | Password: ********** (<a href="" data-toggle="modal" data-target="#myModal">change</a>)
								</p>
							</div>
						</div>
					</div>
	
					<div class="col-sm-4">
						<div class="text-center mt-sm-0 mt-3 text-sm-right">
							<a href="<c:url value='/users/${user.id}'/>" class="btn btn-light">
								<i class="far fa-edit"></i> Edit User
							</a>
	                        <c:if test="${loggedUser.user.id != user.id}">
								<a href="javascript:;" class="btn btn-light deletarProduto" data-href="<c:url value='/users/${user.id}/remove'/>">
									<i class="far fa-trash-alt"></i> Delete User
								</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

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
				<c:import url="../forms/form-userpass.jsp"></c:import>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>


