<%@taglib tagdir="/WEB-INF/tags" prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Thiago Carneiro Ximenes" />
<meta name="reply-to" content="thiagoximenesfhrc@gmail.com" />
<meta name="description" content="<fmt:message key='meta.description'/>" />
<meta name="keywords"
	content="vraptor, desenvolvimento, development, java, hibernate" />

<title>Simple Project</title>

<!-- Ícone -->
<%-- <link rel="shortcut icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>
<%-- <link rel="icon" href="<c:url value="/img/icon/favicon.ico"/>" type="image/x-icon"> --%>

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">

<!-- CSS Import -->
<%-- <link href="<c:url value="/css/plugins/bootstrap/bootstrap.min.css"/>" rel="stylesheet" type="text/css" /> --%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<%-- <link href="<c:url value="/css/plugins/bootstrap/bootstrap-theme.css"/>" rel="stylesheet" type="text/css" /> --%>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"> -->
<%-- <link href="<c:url value="/css/plugins/sweetalert/sweetalert.css"/>" rel="stylesheet" type="text/css" /> --%>
<!-- <link rel="stylesheet" href="sweetalert2.min.css"> -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!-- <script src="sweetalert2.all.min.js"></script> -->

<link href="<c:url value="/css/general.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/css/forms.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/css/tables.css"/>" rel="stylesheet" type="text/css" />
	
<%-- <link href="<c:url value="/css/bootstrap-datepicker.css"/>" rel="stylesheet" type="text/css"> --%>

</head>
<body class="bg-login">

	<template:menu />

	<div class="text-center loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>



	<div id="content">
		<div class="container-fluid">