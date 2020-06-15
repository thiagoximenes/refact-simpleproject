<%@ attribute name="name" required="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="alert alert-danger alert-dismissible fade in" role="alert">
	<button type="button" class="close" data-dismiss="alert"
		aria-label="Close">
		<span aria-hidden="true">x</span>
	</button>
	<strong>Atenção!</strong> ${errors.from(name)}
</div>