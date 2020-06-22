<%@taglib tagdir="/WEB-INF/tags" prefix="toast"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../../header.jsp"%>

<div class="container-fluid">
	<div class="header">
		<div class="row align-items-end mb-3">
			<div class="col">
				<h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${linkTo[IndexController].index() }">Simple Project</a></li>
							<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
						</ol>
					</nav>
				</h6>
				<h4>Welcome to dashboard!</h4>
				<p>This .JSP are visible only for <b>logged users</b>, like you.</p>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="content">
		<div class="row align-items-end">
			<div class="col-lg-4 col-md-6 col-sm-12">
			<c:if test="${usuarioLogado.usuario.tipo == 'ADMIN' }">
				<c:forEach items="${usuarios}" var="usuario">
					<div class="col-12">
						<div class="card mb-1">
							<div class="card-body profile-user-box" style="padding:.40rem!important;">
								<div class="media">
									<span class="float-left m-2 mr-4 ">
										<img style="height: 60px;" class="rounded-circle img-thumbnail" src="<c:url value="/img/profile.png"/>" />
									</span>
									<div class="media-body">
										<input type="hidden" id="bs-senha" class="invis" value="${usuario.senha}" />
										<span>${usuario.nome} ${usuario.sobrenome}</span></br>
										<span>${usuario.email} / ${usuario.login}</span></br>
										<span style="font-size: .8rem !important;">
											<c:if test="${usuario.tipo == 'ADMIN'}">
				                        		Full access <span class="badge badge-warning">Admin Master</span>
											</c:if>
											<c:if test="${usuario.tipo == 'NORMAL'}">
				                        		Limited access <span class="badge badge-secondary">User</span>
											</c:if>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			</div>
		</div>
	</div>
</div>

<toast:notificationAlert />

<%@ include file="../../footer.jsp"%>

