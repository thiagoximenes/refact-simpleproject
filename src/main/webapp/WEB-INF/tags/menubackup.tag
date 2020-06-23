<%@tag description="Template para páginas / menu" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar bg-dark sticky-top">
	<a class="navbar-brand" href="#menu-toggle" id="menu-toggle"> <!-- 			<img class="restaurante" src="/keepfood/img/keepfood-menu.png" /> -->
		<span>Simple Project</span> <i class="fa fa-bars" id="hamburguer-nav"
		aria-hidden="true"></i>
	</a> <a class="navbar-brand" href="${linkTo[IndexController].index() }"
		id="menu-toggle"> <i class="fa fa-home" id="hamburguer-nav"
		aria-hidden="true"></i>
	</a>
</nav>

<div id="wrapper" class="toggled">
	<div class="nav-side-menu hidden-print">
		<div class="brand">
			<div class="navbar-user">
				<span class="profile-text"> Olá, <a> <span
						style="text-transform: uppercase;">${usuarioLogado.usuario.nome}</span>
				</a> <a href="${linkTo[LoginController].desloga()}">(sair)</a>
				</span>
			</div>
			<div id="normal-brand">
				<h4 id="normal-brand-text">Control Panel</h4>
			</div>
		</div>

		<div class="menu-list">
			<ul id="menu-content" class="menu-content collapse out">
				<li id="inicio-li" class="a"><a
					href="${linkTo[IndexController].index()}"> Inicio</a></li>
				<%-- 					<li id="inicio-li" class="a"><a href="${linkTo[FichaController].lista()}"> Fichas Técnicas</a></li> --%>
				<%-- 					<li id="inicio-li" class="a"><a href="${linkTo[DistribuicaoController].lista()}"> Distribuição de Refeições</a></li> --%>
				<%-- 					<li id="inicio-li" class="a"><a href="${linkTo[CardapioController].lista()}"> Planejamento de Cardápios</a></li> --%>

				<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
					<li data-toggle="collapse" data-target="#users" class="collapsed"
						id="usuarios-li"><a
						href="${linkTo[UsuarioController].lista()}">Usuários</a></li>
				</c:if>
			</ul>
		</div>
		<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
			<div id="admin-brand">
				<h4 id="admin-brand-text">
					<i class="fa fa-circle" aria-hidden="true" id="icon-adm-mode"></i>Modo
					Administrador
				</h4>
			</div>
		</c:if>
	</div>