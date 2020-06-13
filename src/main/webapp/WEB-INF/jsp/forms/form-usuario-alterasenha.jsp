<%@ taglib tagdir="/WEB-INF/tags" prefix="alert" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form id="alterarSenhaForm" class="form-style" action="<c:url value="/usuarios/${usuarioLogado.usuario.id}"/>" method="POST">
	<input type="hidden" name="usuario.id" value="${usuarioLogado.usuario.id}" required/>
	
	<c:if test="${usuarioLogado.usuario.tipo=='NORMAL'}">
		<div class="row">
			<div class="col-sm-12">
				<label for="senha_antiga">Senha antiga: *${usuarioLogado.usuario.senha}</label>
				<input type="password" id="senha_antiga" name="senha_antiga" class="form-control" placeholder="AINDA N�O FUNCIONA" disabled/>
			</div>
		</div>
	</c:if>
	
	<div class="row">
		<div class="col-sm-12">
			<label for="senha_nova">Nova senha:</label>
			<input type="password" id="senha_nova" name="senha_nova" class="form-control" required/>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<label for="rep_senha_nova">Repita a senha:</label>
			<input type="password" id="rep_senha_nova" name="usuario.senha" class="form-control" required/>
		</div>
	</div>
	
<!-- 	<div class="row"> -->
<!-- 		<div class="col-sm-12 invisible" id="msgErro-alteraSenha"> -->
<!-- 			<label><strong>Erro!</strong> As senhas n�o est�o iguais.</label> -->
<!-- 		</div> -->
<!-- 	</div> -->

	<div class="row  invis" id="msgErro-alteraSenha">
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissible fade in" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">x</span>
			</button>
			<strong>Aten��o!</strong> � necess�rio que os campos sejam iguais.
			</div>
		</div>
	</div>
	
	<div class="row  invis" id="msgErro-qtddLetrasSenha">
		<div class="col-sm-12">
			<div class="alert alert-danger alert-dismissible fade in" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">x</span>
			</button>
			<strong>Aten��o!</strong> � necess�rio que o campo 'Senha' possua entre 4 e 30 caracteres.
			</div>
		</div>
	</div>
	
	<input type="hidden" name="usuario.nome" value="${usuarioLogado.usuario.nome}" />
	<input type="hidden" name="usuario.sobrenome" value="${usuarioLogado.usuario.sobrenome}" />
	<input type="hidden" name="usuario.email" value="${usuarioLogado.usuario.email}" />
	<input type="hidden" name="usuario.login" value="${usuarioLogado.usuario.login}" />
	<input type="hidden" name="usuario.tipo" value="${usuarioLogado.usuario.tipo}" />
	
	<div class="row">
		<div class="col-sm-12">
	<!-- <button class="btn btn-red" type="submit" name="_method" value="PUT" id="alterar-senha">Alterar senha</button> -->
				<button id="alterar-senha-btn" class="btn btn-red" type="submit" name="_method" value="PUT">Alterar senha</button>
			</div>
		</div>
</form>


