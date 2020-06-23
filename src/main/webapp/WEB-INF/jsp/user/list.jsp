<%@ taglib tagdir="/WEB-INF/tags" prefix="ct"%>
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
							<li class="breadcrumb-item" aria-current="page"><a href="${linkTo[UserController].list() }">Users</a></li>
							<li class="breadcrumb-item active" aria-current="page">List</li>
						</ol>
					</nav>
				</h6>
				<h4>Users list</h4>
			</div>
			
			<div class="col-auto">
				<a class="btn btn-light" href="${linkTo[UserController].register()}">
					<i class="fas fa-plus"></i> New user
				</a>
			</div>
		</div>
		<div class="row align-items-end">
			<div class="col buscar">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">
							<i class="fa fa-search" aria-hidden="true"></i>
						</span>
					</div>
					<input type="text" class="form-control filterable" aria-label="Default" aria-describedby="inputGroup-sizing-default">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">ID <i class="fas fa-sort"></i></th>
					<th scope="col">Name <i class="fas fa-sort"></i></th>
					<th scope="col">Email <i class="fas fa-sort"></i></th>
					<th scope="col">Login <i class="fas fa-sort"></i></th>
					<th scope="col">Type <i class="fas fa-sort"></i></th>
					<th scope="col">Password <i class="fas fa-sort"></i></th>
					<th scope="col">Actions <i class="fas fa-sort"></i></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr class="tr-item" role="row">
						<th> ${user.id}</th>
						<td id="name"> ${user.name} ${user.surname} 
							<c:if test="${loggedUser.user.id == user.id}">
								<span class="badge badge-success">Active</span>
							</c:if>
						</td>
						<td id="email">${user.email}</td>
						<td id="login">${user.login}</td>
						<td id="type">${user.type}</td>
						<td id="password">${user.password}</td>
						<td class="tdedita">
							<c:if test="${loggedUser.user.id == user.id}">
								<a href="${linkTo[UserController].perfil()}"><i class="fas fa-users-cog"></i></a>
							</c:if>							
							<c:if test="${loggedUser.user.id != user.id}">
								<a href="<c:url value='/users/${user.id}'/>" data-toggle="tooltip" data-placement="bottom" title="Edit item"> <i class="far fa-edit"></i></a>
								<a class="deletarProduto" href="javascript:void(0);" data-href="<c:url value='/user/remove?user.id=${user.id}'/>"><i class="far fa-trash-alt"></i></a>
								<a href="<c:url value='/users/${user.id}/view'/>"><i class="far fa-eye"></i></a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<ct:notificationAlert />

<%@ include file="../../footer.jsp"%>

