<%@taglib tagdir="/WEB-INF/tags" prefix="alert"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="author" content="Thiago Carneiro Ximenes" /> -->
<!-- <meta name="reply-to" content="thiagoximenesfhrc@gmail.com" /> -->
<%-- <meta name="description" content="<fmt:message key='meta.description'/>" /> --%>
<!-- <meta name="keywords" content="vraptor, restaurante, desenvolvimento, development, java, hibernate" /> -->

<!-- <title>Blank Project</title> -->

<%-- <link rel="shortcut icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>
<%-- <link rel="icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>

<!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Exo+2:400,600" rel="stylesheet"> -->

<%-- <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" /> --%>
<%-- <link href="<c:url value="/css/estilo.css"/>" rel="stylesheet" type="text/css" /> --%>

<!-- <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> -->
<%-- <script type="text/javascript" src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script> --%>
<!-- </head> -->

<!-- <body class="login-out"> -->

<%@ include file="../../header.jsp" %> 
  
  <div class="header-login-out-banner">
    <div class="row">
    	<div class="col-md-12 text-center">
	        <a href="#" aria-label="Homepage">
	        <img class="img-responsive" style="height:50px; width: 50px;" src="<c:url value="/img/logo-512.png"/>">
	        </a>
    	</div>
   	</div>
  </div>

   <!-- CORPO -->

      <div class="form-login-out" id="login">

        <form action="${linkTo[LoginController].autentica(null, null)}" method="post">
          <div class="login-form-titulo">
            <h3>Faça login no KeepFood</h3>
          </div>

		  <div class="login-out-body">
            <label for="login">Nome de usuário ou email</label>
            <input autofocus="autofocus" class="form-control input-block" id="login" name="login" tabindex="1" type="text">
            <label for="senha">Senha <a href="#" class="label-link">Esqueci minha senha!</a></label>
            <input class="form-control input-block" id="senha" name="senha" tabindex="2" type="password">
            <input class="btn btn-login-out btn-block" name="commit" tabindex="3" type="submit" value="Logar-se">
          </div>
        </form>
        
		<c:forEach var="erro" items="${errors}">
			<alert:validationMessage name="login_invalido" />
		</c:forEach>

       	<p class="login-out-newacc">Não tem acesso? <a href="#" data-toggle="modal" data-target="#myModal">Entre em contato</a>.</p>
      	
      	<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
		        <h4 class="modal-title" id="myModalLabel">Contato</h4>
		      </div>
		      <div class="modal-body">
		      	Entre em contato com <a href="mailto:thiagoximenesfhrc@gmail.com">suporte@keepfood.com</a>.<br><br>
		      	insert into usuario (nome,sobrenome,login,senha,email,tipo) values ("thiago","ximenes","thiago","ximenes","thiagoximenesfhrc@gmail.com","ADMIN");
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
      </div>
      
      <%@ include file="../../footer.jsp" %> 

<!-- <script src="js/principal.js"></script> -->

<!-- </body> -->
<!-- </html> -->