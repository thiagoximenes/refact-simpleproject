<%@attribute name="name" required="true" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty error.name}">
	<small class="form-text text-muted valid-error"> ${errors.from(name)}</small>
</c:if>
