<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${msg != null}">
	<div style="position: absolute; top: 5%; right: 5%;">
		<div id="myToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
			<div class="toast-header">
				<strong class="mr-auto">Notification</strong>
				<small class="text-muted">now</small>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">
				${msg}
			</div>
		</div>
	</div>
</c:if>
