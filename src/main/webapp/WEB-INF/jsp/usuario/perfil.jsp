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
					<li class="breadcrumb-item active" aria-current="page">Perfil</li>
				</ol>
			</nav>
			<h4>My perfil</h4>
		</div>
	</div>
</div>


<div class="grupo">
	<input type="hidden" id="bs-senha" class="invis" value="${usuarioLogado.usuario.senha}"/>
	<div class="view-content">
		<h4 class="titulo2"></h4>
		<h3>${usuarioLogado.usuario.nome} ${usuarioLogado.usuario.sobrenome}</h3>
		<hr/>
		
		<div class="row" id="div-perfil">
			<div class="col-xs-12 col-md-2">
				<div id="img-perfil">
					<img src="<c:url value="/img/profile.png"/>"/>
				</div>
			</div>
			<div class="col-xs-12 col-md-4">
				<span>Informações de contato:</span>
				Email: ${usuarioLogado.usuario.email}
				<br/><br/>
				<span>Informações gerais:</span>
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">Tipo de acesso: Total<br/></c:if><c:if test="${usuarioLogado.usuario.tipo}=='Normal'"></c:if>
				Login: ${usuarioLogado.usuario.login}
				<br/>Senha: <label id="visu-asterisco">********</label><c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}"> <label id="visu-senha" class="invis">${usuarioLogado.usuario.senha} </label><label id="visu-olho"><i class="fa fa-eye fa-lg" aria-hidden="true" style="font-size:13px;"> </i></label> </c:if> (<a href="" data-toggle="modal" data-target="#myModal">alterar senha</a>)
			</div>
			<div class="col-xs-12 col-md-4">
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
					<span class="span-func"><a href="<c:url value='/usuarios/${usuarioLogado.usuario.id}'/>" data-toggle="tooltip" data-placement="right" title="Editar item"><i class="fa fa-pencil fa-lg" aria-hidden="true"></i> Editar usuário</a></span>
				</c:if>
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
					<span class="span-func"><a href="javascript:;" class="deletarProduto" data-href="<c:url value='/usuario/remove?usuario.id=${usuarioLogado.usuario.id}'/>" data-toggle="tooltip" data-placement="right" title="Deletar item"><i class="fa fa-trash fa-lg" aria-hidden="true"></i> Deletar usuário</a></span>
				</c:if>	
			</div>
			<div class="col-xs-12 col-md-2">
				
			</div>
		</div>
		
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header titulo1-insta">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Trocar senha</h4>
		      </div>
		      <div class="modal-body">
				<c:import url="../forms/form-usuario-alterasenha.jsp"></c:import>
		      </div>

		    </div>
		  </div>
		</div>
			
	</div>
	
	
	
</div>

<%@ include file="../../footer.jsp" %> 


