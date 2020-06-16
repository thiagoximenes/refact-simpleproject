<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp"%>

<div class="header-body pt-3 pb-3">
	<div class="row align-items-end">
		<div class="col">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a
						href="${linkTo[IndexController].dashboard() }">Simple Project</a></li>
					<li class="breadcrumb-item" aria-current="page"><a
						href="${linkTo[UsuarioController].lista() }">Users</a></li>
					<li class="breadcrumb-item active" aria-current="page">List</li>
				</ol>
			</nav>
			<h4>Usuários</h4>
		</div>
		<div class="col-auto">
			<a class="btn btn-success"
				href="${linkTo[UsuarioController].novo()}"> <i
				class="fas fa-plus"></i> Novo Usuário
			</a>
		</div>
	</div>
	<div class="row align-items-end">
		<div class="col buscar">
			<label class="label-filtro-tabela" for="filtrar-tabela-usuarios"><i
				class="fa fa-search" aria-hidden="true"></i></label> <input
				class="form-control filtro-tabela filtrar-tabela" type="text"
				name="filtro-usuarios" id="filtrar-tabela-usuarios"
				placeholder="Pesquisar" />
		</div>
	</div>
</div>

<!-- 		Mensagens Sucesso -->
<c:if test="${usuario_msg_a != null}">
	<div id="msg-sucesso">${usuario_msg_a}</div>
</c:if>
<c:if test="${usuario_msg_r != null}">
	<div id="msg-sucesso">${usuario_msg_r}</div>
</c:if>
<c:if test="${usuario_msg_e != null}">
	<div id="msg-sucesso">${usuario_msg_e}</div>
</c:if>
<!-- 		Fim Mensagem Sucesso		 -->


<div class="table-responsive">
	<table class="table table-hover" id="tabela">
		<thead class="usuario-head">
			<tr class="d-flex">
				<th class="col-3" scope="col">Name <i class="fas fa-sort"></i></th>
				<th class="col-3" scope="col">Email <i class="fas fa-sort"></i></th>
				<th class="col-1" scope="col">Login <i class="fas fa-sort"></i></th>
				<th class="col-1" scope="col">Type <i class="fas fa-sort"></i></th>
				<th class="col-2" scope="col">Password <i class="fas fa-sort"></i></th>
				<th class="col-2" scope="col">Actions <i class="fas fa-sort"></i></th>
			</tr>
		</thead>
		<tbody class="usuario-body">
			<c:forEach items="${usuarios}" var="usuario">
				<tr class="d-flex tr-item">
					<td class="col-3" id="nome"> ${usuario.nome} ${usuario.sobrenome}</td>
					<td class="col-3" id="email">${usuario.email}</td>
					<td class="col-1" id="login">${usuario.login}</td>
					<td class="col-1" id="tipo">${usuario.tipo}</td>
					<td class="col-2" colspan="2">${usuario.senha}</td>
					<td class="col-2 tdedita">
						<a href="<c:url value='/usuarios/${usuario.id}'/>" data-toggle="tooltip" data-placement="bottom" title="Editar item"> <i class="fas fa-edit"></i></a>
						<c:if test="${usuarioLogado.usuario.id != usuario.id}">
							<a class="deletarProduto" href="javascript:void(0);" data-href="<c:url value='/usuario/remove?usuario.id=${usuario.id}'/>"><i class="fa fa-trash icon-dd" aria-hidden="true"></i></a>
						</c:if>
						<a href="<c:url value='/usuarios/${usuario.id}/view'/>"><i class="fa fa-user icon-dd" aria-hidden="true"></i></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<c:if test="${usuarioalterado_msg != null}">
	<div id="msg-sucesso">${usuarioalterado_msg}</div>
</c:if>


<%@ include file="../../footer.jsp"%>

