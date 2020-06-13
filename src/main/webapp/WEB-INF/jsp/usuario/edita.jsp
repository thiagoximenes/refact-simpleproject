<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp"%>

<div class="grupo">
	<h4 class="titulo1">Atualização - Usuários</h4>
	<form class="form-style form-basic"
		action="<c:url value="/usuarios/${usuario.id}"/>" method="POST">
		<c:import url="../forms/form-usuario.jsp"></c:import>
		<div class="row crow">
			<button class="btn btn-red" type="submit" name="_method" value="PUT">Alterar</button>
			<a type="button" class="btn btn-dark"
				href="${linkTo[UsuarioController].lista()}" data-toggle="tooltip"
				data-placement="bottom" title="Lista de usuários"><i
				class="fa fa-list-alt" aria-hidden="true"></i></a>
		</div>
	</form>

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
</div>

<%@ include file="../../footer.jsp"%>
