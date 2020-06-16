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
						href="${linkTo[IndexController].dashboard() }">Dashboard</a></li>
					<li class="breadcrumb-item" aria-current="page"><a
						href="${linkTo[UsuarioController].lista() }">Users</a></li>
					<li class="breadcrumb-item" aria-current="page">New</li>
				</ol>
			</nav>
			<h4>New user</h4>
		</div>
	</div>
</div>

<div class="content">
	<div class="row align-items-end">
		<div class="col">
			<form class="form-style form-basic" action="${linkTo[UsuarioController].adiciona(null)}" method="post">
				<c:import url="../forms/form-usuario.jsp"></c:import>
				<input type="submit" class="btn btn-success" value="Register" />
				<a type="button" class="btn btn-dark" href="${linkTo[UsuarioController].lista()}" data-toggle="tooltip" data-placement="bottom" title="Back to list">
					<i class="fa fa-arrow-left" aria-hidden="true"></i>
				</a>
			</form>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
