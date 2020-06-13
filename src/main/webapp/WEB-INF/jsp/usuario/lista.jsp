<%@ taglib tagdir="/WEB-INF/tags" prefix="alura" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp" %> 

	<div class="header-body pt-3 pb-3">
		<div class="row align-items-end">
			<div class="col">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="${linkTo[IndexController].index() }">Simple Project</a></li>
						<li class="breadcrumb-item" aria-current="page"><a href="${linkTo[UsuarioController].lista() }">Users</a></li>
						<li class="breadcrumb-item active" aria-current="page">List</li>
					</ol>
				</nav>
				<h4>Usu�rios</h4>
			</div>
			<div class="col-auto">
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
					<a class="btn btn-success" href="${linkTo[UsuarioController].novo()}">
						<i class="fas fa-plus"></i> Novo Usu�rio
					</a>
				</c:if>
			</div>
		</div>
		<div class="row align-items-end">
			<div class="col buscar">
				<label class="label-filtro-tabela" for="filtrar-tabela-usuarios"><i class="fa fa-search" aria-hidden="true"></i></label>
				<input class="form-control filtro-tabela filtrar-tabela" type="text" name="filtro-usuarios" id="filtrar-tabela-usuarios" placeholder="Pesquisar"/>
			</div>
		</div>
	</div>
	
	
	
	<div class="row justify-content-center">
	</div>
		
<!-- 		Mensagens Sucesso -->
		<c:if test="${usuario_msg_a != null}">
			<div id="msg-sucesso">
				${usuario_msg_a}
			</div>
		</c:if>
		<c:if test="${usuario_msg_r != null}">
			<div id="msg-sucesso">
				${usuario_msg_r}
			</div>
		</c:if>
		<c:if test="${usuario_msg_e != null}">
			<div id="msg-sucesso">
				${usuario_msg_e}
			</div>
		</c:if>
<!-- 		Fim Mensagem Sucesso		 -->
	
		
	<div class="table-responsive">
		<table class="table table-hover" id="tabela">
			<thead class="usuario-head">
				<tr class="d-flex">
					<th class="col-3" scope="col">Nome<span class="glyphicon glyphicon-chevron-down icon-sort" aria-hidden="true"></span></th>
					<th class="col-3" scope="col">Email<span class="glyphicon glyphicon-chevron-down icon-sort" aria-hidden="true"></span></th>
					<th class="col-2" scope="col">Login<span class="glyphicon glyphicon-chevron-down icon-sort" aria-hidden="true"></span></th>
					<th class="col-2" scope="col">Tipo<span class="glyphicon glyphicon-chevron-down icon-sort" aria-hidden="true"></span></th>
					
					<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
						<th class="col-2" scope="col">Senha<span class="glyphicon glyphicon-chevron-down icon-sort" aria-hidden="true"></span></th>
					</c:if>
				</tr>
			</thead>
			<tbody class="usuario-body">
				<c:forEach items="${usuarios}" var="usuario">
					<tr class="d-flex tr-item">
						<td class="col-3" id="nome">
							<div class="btn-group dd-btn hidden-print">
								<i class="fa fa-chevron-circle-down dropdown-toggle dropdown-toggle-split" id="icon-table-dd" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-hidden="true"></i>
								  <div class="dropdown-menu dd-menu">
								    <c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
									    <a class="dropdown-item dd-item" href="<c:url value='/usuarios/${usuario.id}'/>"><i class="fas fa-pencil-alt"></i> Editar</a>
									    <c:if test="${usuarioLogado.usuario.id != usuario.id}">
									    	<a class="dropdown-item dd-item deletarProduto" href="javascript:void(0);" data-href="<c:url value='/usuario/remove?usuario.id=${usuario.id}'/>"><i class="fa fa-trash icon-dd" aria-hidden="true"></i> Deletar</a>
									    </c:if>
							 		</c:if>
							 		<a class="dropdown-item dd-item" href="<c:url value='/usuarios/${usuario.id}/view'/>"><i class="fa fa-user icon-dd" aria-hidden="true"></i> Visualizar</a>
							 	 </div>
							</div>
							${usuario.nome} ${usuario.sobrenome}
						</td>
<%-- 						<td id="nome">${usuario.nome} ${usuario.sobrenome}</td> --%>
						<td class="col-3" id="email">${usuario.email}</td>
						<td class="col-2" id="login">${usuario.login}</td>
						<td class="col-2" id="tipo">${usuario.tipo}</td>
						
						<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
							<td class="col-2" colspan="2">${usuario.senha}</td>
<%-- 							<td class="tdedita"><a href="<c:url value='/usuarios/${usuario.id}'/>" data-toggle="tooltip" data-placement="bottom" title="Editar item"><span class="glyphicon glyphicon-pencil" aria-hidden="true" id="icon-edit"></span></a> --%>
<%-- 							<a href="javascript:;" class="deletarProduto" data-href="<c:url value='/usuario/remove?usuario.id=${usuario.id}'/>" data-toggle="tooltip" data-placement="bottom" title="Deletar item"><span class="glyphicon glyphicon-trash" aria-hidden="true" id="icon-del"></span></a></td> --%>
						</c:if>
					</tr>
				</c:forEach>	
			</tbody>
		</table>

	</div>
	
	<c:if test="${usuarioalterado_msg != null}">
		<div id="msg-sucesso">
			${usuarioalterado_msg}
		</div>
	</c:if>
	

<%@ include file="../../footer.jsp" %> 
