<%@ taglib tagdir="/WEB-INF/tags" prefix="alert"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<input type="hidden" name="usuario.id" value="${usuario.id }" />

<div class="row">
	<div class="form-group col-sm">
		<label for="nome">Nome:</label>
		<input type="text" name="usuario.nome" id="nome" class="form-control" value="${usuario.nome}" placeholder="Seu primeiro nome." required autofocus />
	</div>
	<div class="form-group col-sm">
		<label for="sobrenome">Sobrenome:</label>
		<input type="text" name="usuario.sobrenome" id="sobrenome" class="form-control" value="${usuario.sobrenome}" placeholder="Seu último nome." />
	</div>
	<div class="form-group col-sm">
		<label for="email">Email:</label>
		<input type="text" name="usuario.email" id="email" class="form-control" value="${usuario.email}" placeholder="Ex.: usuario10@gmail.com" required />
	</div>
</div>

<div class="row">
	<div class="form-group col-sm">
		<label for="login">Login:</label>
		<input type="text" name="usuario.login" id="login" class="form-control" value="${usuario.login}" placeholder="Escolha um login válido." required />
	</div>
	
	<c:if test="${empty usuario.senha}">
		<div class="form-group col-sm">
			<label for="senha">Senha:</label>
			<input type="password" name="usuario.senha" id="senha" placeholder="Escolha uma senha." class="form-control" required />
		</div>
	</c:if>
	<c:if test="${not empty usuario.senha}">
		<input type="hidden" name="usuario.senha" value="${usuario.senha}" />

		<div class="form-group col-sm">
			<div>
				Senha: ******** (<a href="" data-toggle="modal"
					data-target="#myModal">alterar senha</a>)
			</div>
		</div>
	</c:if>
	
<%-- 	<c:if test="${empty cusuario.tipo}"> --%>
		<div class="form-group col-sm">
			<label for="tipo">Tipo de Usuário:</label>
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
<%-- 	</c:if> --%>
	
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
