<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp"%>

<!-- WAIT FRONT-END REFACTS -->

<div class="grupo">
	<h4 class="titulo1">Visualização de usuários</h4>
	<div class="row crow">
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
			<h4 style="font-size: 1.9rem;">${usuario.nome}
				${usuario.sobrenome}</h4>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 crow">
			<a href="${linkTo[UsuarioController].lista()}"><i
				class="fa fa-list-alt icon-add" aria-hidden="true"
				data-toggle="tooltip" data-placement="bottom"
				title="Lista de usuários"></i></a> <a
				href="<c:url value='/usuarios/${usuarioLogado.usuario.id}'/>"><i
				class="fa fa-pencil icon-editar" aria-hidden="true"
				data-toggle="tooltip" data-placement="bottom" title="Editar usuário"></i></a>
			<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
				<c:if test="${usuarioLogado.usuario.id != usuario.id}">
					<a href="javascript:;" class="deletarProduto"
						data-href="<c:url value='/usuario/remove?usuario.id=${usuarioLogado.usuario.id}'/>"><i
						class="fa fa-trash icon-deletar" aria-hidden="true"
						data-toggle="tooltip" data-placement="bottom"
						title="Deletar usuário"></i></a>
				</c:if>
			</c:if>
		</div>
	</div>
	<div class="row crow" id="div-perfil">
		<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 text-center">
			<img src="<c:url value="/img/profile.png"/>" id="img-perfil" />
		</div>

		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 text-left">
			<div class="container" id="div-info-user">
				<span>Informações do usuário:</span><br /> Email: ${usuario.email}<br />
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
						Tipo de acesso: Total<br />
				</c:if>
				<c:if test="${usuarioLogado.usuario.tipo=='NORMAL'}"></c:if>
				Login: ${usuario.login} <br />Senha: <label id="visu-asterisco">********</label>
				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
					<label id="visu-senha" class="invis">${usuario.senha} </label>
					<label id="visu-olho"><i class="fa fa-eye fa-lg"
						aria-hidden="true" style="font-size: 13px;"> </i></label>
				</c:if>
				(<a href="" data-toggle="modal" data-target="#myModal">alterar
					senha</a>)
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header titulo1-insta">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Trocar senha</h4>
			</div>
			<div class="modal-body">
				<c:import url="../forms/form-usuario-alterasenha2.jsp"></c:import>
			</div>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>


