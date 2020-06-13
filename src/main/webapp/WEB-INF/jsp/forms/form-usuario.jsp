<%@ taglib tagdir="/WEB-INF/tags" prefix="alert" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<input type="hidden" name="usuario.id" value="${usuario.id }" />
<div class="row">
	<fieldset>
		<legend>Dados</legend>
		<div class="row crow">
			<div class="col-sm-4">
				<label for="nome">Nome:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
				<input type="text" name="usuario.nome" id="nome" class="form-control" value="${usuario.nome}" placeholder="Seu primeiro nome." required autofocus/>
			</div>
			<div class="col-sm-4">
				<label for="sobrenome">Sobrenome:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
				<input type="text" name="usuario.sobrenome" id="sobrenome" class="form-control" value="${usuario.sobrenome}" placeholder="Seu último nome." required/>
			</div>
			<div class="col-sm-4">
				<label for="email">Email:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
				<input type="text" name="usuario.email" id="email" class="form-control" value="${usuario.email}" placeholder="Ex.: usuario10@gmail.com" required/>
			</div>
		</div>
		
		<div class="row crow">
		
			<div class="col-sm-4">
				<label for="login">Login:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
				<input type="text" name="usuario.login" id="login" class="form-control" value="${usuario.login}" placeholder="Escolha um login válido." required/>
			</div>
			
		<!-- 	CAMPO SENHA PARA O EDIT -->
			<c:if test="${not empty usuario.senha}">
				<input type="hidden" name="usuario.senha" value="${usuario.senha}" />
				
				<div class="col-sm-4" style="line-height: 64px;">
					<div>Senha: ******** (<a href="" data-toggle="modal" data-target="#myModal">alterar senha</a>) </div>
				</div>
			</c:if>
		<!-- 	FIM CMP EDIT -->
		
			<c:if test="${empty usuario.senha}">
				<div class="col-sm-4">
					<label for="senha">Senha:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
					<input type="password" name="usuario.senha" id="senha" placeholder="Escolha uma senha." class="form-control" required/>
				</div>
			</c:if>
			
			<c:if test="${usuarioLogado.usuario.tipo == 'NORMAL'}">
				<input type="hidden" name="usuario.tipo" id="tipo" value="NORMAL"/>
			</c:if>
			
			<c:if test="${usuarioLogado.usuario.tipo == 'ADMIN'}">
				<div class="col-sm-4">
					<label for="tipo">Tipo de Usuário:</label><p class="obrigatorio" data-toggle="tooltip" data-placement="right" title="Campo obrigatório"> *</p>
					<select class="form-control" name="usuario.tipo" id="tipo" required>
						<option>Selecione um tipo de usuário</option>
			        <c:forEach var="tip" items="${tipoUsuario}">
			        	<c:if test="${tip.tipoUsuario == usuario.tipo}">
			        		<option value="${tip.tipoUsuario}" selected="selected">${tip.tipoUsuario}</option>
			        	</c:if>
						<c:if test="${tip.tipoUsuario != usuario.tipo}">
			        		<option value="${tip.tipoUsuario}">${tip.tipoUsuario}</option>
			        	</c:if>
			        </c:forEach>  
				    </select>
				</div>
			</c:if>
		</div>
	</fieldset>
</div>

	
<c:forEach items="${errors.from('usuario.nome')}" var="error">
	<alert:validationMessage name="usuario.nome" />
</c:forEach>
<c:forEach items="${errors.from('usuario.sobrenome')}" var="error">
	<alert:validationMessage name="usuario.sobrenome" />
</c:forEach>
<c:forEach items="${errors.from('usuario.email')}" var="error">
	<alert:validationMessage name="usuario.email" />
</c:forEach>
<c:forEach items="${errors.from('usuario.login')}" var="error">
	<alert:validationMessage name="usuario.login" />
</c:forEach>
<c:forEach items="${errors.from('usuario.senha')}" var="error">
	<alert:validationMessage name="usuario.senha" />
</c:forEach>
<c:forEach items="${errors.from('usuario.tipo')}" var="error">
	<alert:validationMessage name="usuario.tipo" />
</c:forEach>
