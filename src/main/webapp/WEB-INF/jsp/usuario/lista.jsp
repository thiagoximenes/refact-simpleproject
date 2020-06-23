<%@taglib tagdir="/WEB-INF/tags" prefix="toast"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
								href="${linkTo[UsuarioController].lista() }">Users</a></li>
							<li class="breadcrumb-item active" aria-current="page">List</li>
						</ol>
					</nav>
				</h6>
				<h4>Users list</h4>
			</div>
			
			<div class="col-auto">
				<a class="btn btn-light" href="${linkTo[UsuarioController].novo()}">
					<i class="fas fa-plus"></i> New user
				</a>
			</div>
		</div>
		<div class="row align-items-end">
			<div class="col buscar">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default"><i class="fa fa-search" aria-hidden="true"></i></span>
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
				<c:forEach items="${usuarios}" var="usuario">
					<tr class="tr-item" role="row">
						<th> ${usuario.id}</th>
						<td id="nome"> ${usuario.nome} ${usuario.sobrenome} 
							<c:if test="${usuarioLogado.usuario.id == usuario.id}">
								<span class="badge badge-success">Active</span>
							</c:if>
						</td>
						<td id="email">${usuario.email}</td>
						<td id="login">${usuario.login}</td>
						<td id="tipo">${usuario.tipo}</td>
						<td id="senha">${usuario.senha}</td>
						<td class="tdedita">
							<a href="<c:url value='/usuarios/${usuario.id}'/>" data-toggle="tooltip" data-placement="bottom" title="Editar item"> <i class="far fa-edit"></i></a>
							<c:if test="${usuarioLogado.usuario.id != usuario.id}">
								<a class="deletarProduto" href="javascript:void(0);" data-href="<c:url value='/usuario/remove?usuario.id=${usuario.id}'/>"><i class="far fa-trash-alt"></i></a>
							</c:if>
							<a href="<c:url value='/usuarios/${usuario.id}/view'/>"><i class="far fa-eye"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<toast:notificationAlert />

<%@ include file="../../footer.jsp"%>

