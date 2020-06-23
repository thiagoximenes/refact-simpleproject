<%@taglib tagdir="/WEB-INF/tags" prefix="ct"%>
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
				<span class="h4">Users List </span><small>Quick View</small><br/><br/>
				<c:forEach items="${usuarios}" var="usuario">
					<div class="col-12">
						<div class="card mb-1">
							<div class="card-body sm-card">
								<div class="media">
									<span class="float-left m-2 mr-4 ">
										<img class="rounded-circle img-thumbnail" src="<c:url value="/img/profile.png"/>" />
									</span>
									<div class="media-body">
										<span>${usuario.nome} ${usuario.sobrenome}</span><br/>
										<span>${usuario.email} / ${usuario.login}</span><br/>
										<span><small>
											<c:if test="${usuario.tipo == 'ADMIN'}">
				                        		Full access <span class="badge badge-warning">Admin Master</span>
											</c:if>
											<c:if test="${usuario.tipo == 'NORMAL'}">
				                        		Limited access <span class="badge badge-secondary">User</span>
											</c:if>
										</small></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-12">
			</div>
			<div class="col-lg-4 col-md-6 col-sm-12">
			</div>
		</div>
	</div>
</div>

<ct:notificationAlert />

<%@ include file="../../footer.jsp"%>

