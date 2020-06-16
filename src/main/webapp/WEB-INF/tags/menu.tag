<%@tag description="Template para páginas / menu" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-color">

	<!-- Navbar brand -->
	<a class="navbar-brand" href="${linkTo[IndexController].index() }">Simple Project</a>

	<!-- Collapse button -->
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#basicExampleNav" aria-controls="basicExampleNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<!-- Collapsible content -->
	<div class="collapse navbar-collapse" id="basicExampleNav">

		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<c:if test="${usuarioLogado.usuario.tipo == null}">
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[IndexController].index() }">Home <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[LoginController].form() }">Login <span
						class="sr-only">(current)</span>
				</a></li>
			</c:if>
			<c:if test="${usuarioLogado.usuario.tipo != null}">
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[IndexController].dashboard() }">Dashboard <span
						class="sr-only">(current)</span>
				</a></li>
			</c:if>
			<c:if test="${usuarioLogado.usuario.tipo == 'ADMIN'}">
				<li class="nav-item"><a class="nav-link"
					href="${linkTo[UsuarioController].lista()}">Users</a></li>
			</c:if>

			
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
						<i class="fas fa-user-ninja"></i>
					</c:if> <span style="text-transform: uppercase;">${usuarioLogado.usuario.nome}</span>
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="${linkTo[UsuarioController].perfil()}">My perfil</a>
					<a class="dropdown-item" href="${linkTo[LoginController].desloga()}">Exit</a>
				</div>
			</li>
			
			

		</ul>
		<!-- Links -->

		<form class="form-inline">
			<div class="md-form my-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					aria-label="Search">
			</div>
		</form>
	</div>
	<!-- Collapsible content -->

</nav>
<!--/.Navbar-->
