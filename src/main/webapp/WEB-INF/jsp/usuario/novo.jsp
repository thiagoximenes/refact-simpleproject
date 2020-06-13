<%@ taglib tagdir="/WEB-INF/tags" prefix="alura" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp" %> 

<div class="grupo">
	<h4 class="titulo1">Cadastro - Usuários</h4>
	<form class="form-style form-basic" action="${linkTo[UsuarioController].adiciona(null)}" method="post">
		<c:import url="../forms/form-usuario-temp.jsp"></c:import>
		<div class="row crow">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<input type="submit" class="btn btn-red" value="Cadastrar" />
				<a type="button" class="btn btn-dark" href="${linkTo[UsuarioController].lista()}" data-toggle="tooltip" data-placement="bottom" title="Voltar para lista"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
			</div>
		</div>
	</form>
</div>

<%@ include file="../../footer.jsp" %> 