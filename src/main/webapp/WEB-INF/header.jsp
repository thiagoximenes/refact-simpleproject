<%@taglib tagdir="/WEB-INF/tags" prefix="template"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<!-- Fontes Google -->
<!-- <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Exo+2:300,400,600" rel="stylesheet"> -->
<!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"> -->

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" rel="stylesheet">

<!-- CSS Import -->
<link href="<c:url value="/css/plugins/bootstrap/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
<%-- <link href="<c:url value="/css/plugins/bootstrap/bootstrap-theme.css"/>" rel="stylesheet" type="text/css" /> --%>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"> -->
<link href="<c:url value="/css/plugins/sweetalert/sweetalert.css"/>" rel="stylesheet" type="text/css" />

<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" />
<%-- <link href="<c:url value="/css/bootstrap-datepicker.css"/>" rel="stylesheet" type="text/css"> --%>


</head>
<body class="bg-login">

	<template:menu/>

	<div id="content">
		<div class="container-fluid">

		
		