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

<div class="content">
	<div class="card">
	    <div class="card-body profile-user-box">
	        <div class="row">
	            <div class="col-sm-8">
	                <div class="media">
	                    <span class="float-left m-2 mr-4">
	                    	<img style="height: 100px;" class="rounded-circle img-thumbnail" src="<c:url value="/img/profile.png"/>"/>
	                    </span>
	                    <div class="media-body">
               				<input type="hidden" id="bs-senha" class="invis" value="${usuarioLogado.usuario.senha}"/>
	                        <h4 class="my-1">${usuarioLogado.usuario.nome} ${usuarioLogado.usuario.sobrenome}</h4>
	                        <p class="font-13 text-muted">${usuarioLogado.usuario.email}</p>
	                        <p class="font-13">
	                        	<c:if test="${usuarioLogado.usuario.tipo=='ADMIN'}">
	                        		Full access <span class="badge badge-warning">Admin Master</span>
	                        	</c:if>
	                        	<c:if test="${usuarioLogado.usuario.tipo=='NORMAL'}">
	                        		Limited access <span class="badge badge-secondary">User</span>
	                        	</c:if>
	                        </p>
	                        <p class="font-13">
	                        	Login: ${usuarioLogado.usuario.login} | Password: ********** (<a href="" data-toggle="modal" data-target="#myModal">change</a>)
	                        </p>
<%-- 	                        <c:if test="${usuarioLogado.usuario.tipo=='ADMIN' && usuarioLogado.usuario.id != usuario.id}"> --%>
<%-- 								<p><a style="color: #ff7582!important;" href="javascript:;" class="deletarProduto" data-href="<c:url value='/usuario/remove?usuario.id=${usuarioLogado.usuario.id}'/>" data-toggle="tooltip" data-placement="right" title="Deletar item"><i style="color: #ff7582 !important; font-size: 14px;" class="fa fa-trash fa-lg" aria-hidden="true"></i> Delete user</a></p> --%>
<%-- 							</c:if> --%>
	                    </div> <!-- end media-body-->
	                </div>
	            </div> <!-- end col-->
	
	            <div class="col-sm-4">
	                <div class="text-center mt-sm-0 mt-3 text-sm-right">
	                    <a href="<c:url value='/usuarios/${usuarioLogado.usuario.id}'/>" class="btn btn-light">
	                        <i class="mdi mdi-account-edit mr-1"></i> Edit Profile
	                    </a>
	                </div>
	            </div> <!-- end col-->
	        </div> <!-- end row -->
	    </div> <!-- end card-body/ profile-user-box-->
	</div>
</div>

<!-- 		Change password modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header titulo1-insta">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Change password</h4>
      </div>
      <div class="modal-body">
		<c:import url="../forms/form-usuario-alterasenha.jsp"></c:import>
      </div>
    </div>
  </div>
</div>
<!-- 		End of modal -->

<%@ include file="../../footer.jsp" %> 


