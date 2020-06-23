<%-- <%@ taglib tagdir="/WEB-INF/tags" prefix="ct"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<input type="hidden" name="user.id" value="${user.id }" />

<div class="row">
	<div class="form-group col-sm">
		<label for="name">First name:</label>
		<input type="text" name="user.name" id="name" class="form-control" value="${user.name}" placeholder="Your name." required autofocus />
	</div>
	<div class="form-group col-sm">
		<label for="surname">Last name:</label>
		<input type="text" name="user.surname" id="surname" class="form-control" value="${user.surname}" placeholder="Your last name." />
	</div>
	<div class="form-group col-sm">
		<label for="email">Email:</label>
		<input type="text" name="user.email" id="email" class="form-control" value="${user.email}" placeholder="Ex.: user123@gmail.com" required />
	</div>
</div>

<div class="row">
	<div class="form-group col-sm">
		<label for="login">Username:</label>
		<input type="text" name="user.login" id="login" class="form-control" value="${user.login}" placeholder="Choose a valid login." required />
	</div>
	
	<c:if test="${empty user.password}">
		<div class="form-group col-sm">
			<label for="password">Password:</label>
			<input type="password" name="user.password" id="password" placeholder="Choose a security pass." class="form-control" required />
		</div>
	</c:if>
	<c:if test="${not empty user.password}">
		<input type="hidden" name="user.password" value="${user.password}" />

		<div class="form-group col-sm">
			<div>
				Password: ******** (<a href="" data-toggle="modal" data-target="#myModal">change</a>)
			</div>
		</div>
	</c:if>
	
	<div class="form-group col-sm">
		<label for="tipo">User types:</label>
		<select class="form-control" name="user.type" id="type" required>
			<c:if test="${user.type == null}">
			<option>Select a type</option>
			</c:if>
			<c:forEach var="item" items="${userType}">
				<c:if test="${item.userType == user.type}">
					<option value="${item.userType}" selected="selected">${item.userType}</option>
				</c:if>
				<c:if test="${item.userType != user.type}">
					<option value="${item.userType}">${item.userType}</option>
				</c:if>
			</c:forEach>
		</select>
	</div>
	
</div>

<%-- <c:forEach items="${errors.from('usuario.nome')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.nome" /> -->
<%-- </c:forEach> --%>
<%-- <c:forEach items="${errors.from('usuario.sobrenome')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.sobrenome" /> -->
<%-- </c:forEach> --%>
<%-- <c:forEach items="${errors.from('usuario.email')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.email" /> -->
<%-- </c:forEach> --%>
<%-- <c:forEach items="${errors.from('usuario.login')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.login" /> -->
<%-- </c:forEach> --%>
<%-- <c:forEach items="${errors.from('usuario.senha')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.senha" /> -->
<%-- </c:forEach> --%>
<%-- <c:forEach items="${errors.from('usuario.tipo')}" var="error"> --%>
<!-- 	<alert:validationMessage name="usuario.tipo" /> -->
<%-- </c:forEach> --%>
