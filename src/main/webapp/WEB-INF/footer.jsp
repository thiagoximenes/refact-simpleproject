
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- 				</div> -->
	<!-- 			</div> -->
	</div>
	</div>

	<!-- 	JavaScript -->
	<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	<%-- <script src="<c:url value='/js/bootstrap/bootstrap.min.js'/>"></script> --%>




	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	
	<script>
		$(window).on("load", function() {
		    $(".loader").fadeOut("slow");
		    console.log("Saiu");
		});
		$(window).on("unload", function() {
		    $(".loader").fadeIn("slow");
		    console.log("Entrou ok");
		});
	</script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	<!-- Importing custom javascript -->
	<script src="<c:url value='/js/principal.js'/>"></script>
	<script src="<c:url value='/js/sweatalert-custom.js'/>"></script>
	
	<script src="<c:url value='/js/filtra.js'/>"></script>
	<script src="<c:url value='/js/jquery.tablesorter.min.js'/>"></script>
	<script src="<c:url value='/js/verificasenha.js'/>"></script>
	<script src="<c:url value='/js/visualiza-senha.js'/>"></script>
	<%-- 	<script src="<c:url value='/js/imprimir.js'/>"></script> --%>
	<%-- 	<script src="<c:url value='/js/meiomask.js'/>"></script> --%>
	<%-- 	<script src="<c:url value='/js/validacao.js'/>"></script> --%>
	<%-- 	<script src="<c:url value='/dist/sweetalert.min.js'/>"></script> --%>
	<%-- 	<script src="<c:url value='/js/datepickercustom.js'/>"></script> --%>
	<%-- 	<script src="<c:url value='/js/textareacountchars.js'/>"></script> --%>

</body>
</html>