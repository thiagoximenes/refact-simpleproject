<%@ tag description="Template para páginas / menu" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-color">

	<a class="navbar-brand" href="${linkTo[IndexController].index() }">Simple Project</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="basicExampleNav">

		<ul class="navbar-nav mr-auto">
			<c:if test="${loggedUser.user.type == null}">
				<li class="nav-item">
					<a class="nav-link" href="${linkTo[IndexController].index() }">
						Home <span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="${linkTo[LoginController].form() }">
						Log in <span class="sr-only">(current)</span>
					</a>
				</li>
			</c:if>
			<c:if test="${loggedUser.user.type != null}">
				<li class="nav-item">
					<a class="nav-link" href="${linkTo[IndexController].dashboard() }">Dashboard <span class="sr-only">(current)</span></a>
				</li>
			</c:if>
			<c:if test="${loggedUser.user.type == 'ADMIN'}">
				<li class="nav-item">
					<a class="nav-link" href="${linkTo[UserController].list()}">Users</a>
				</li>
			</c:if>

			<c:if test="${loggedUser.user.type != null}">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<c:if test="${loggedUser.user.type == 'ADMIN'}">
							<i class="fas fa-user-ninja"></i>
						</c:if>
						<span style="text-transform: uppercase;">${loggedUser.user.name}</span>
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="${linkTo[UserController].perfil()}">My perfil</a>
						<a class="dropdown-item" href="${linkTo[LoginController].logout()}">Exit</a>
					</div>
				</li>
			</c:if>
		</ul>
	</div>
</nav>
