<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>liste des messages</title>
<s:url value="/resources/css/bootstrap.css" var="bootstrapStyle" />
<s:url value="/resources/css/message.css" var="coreStyle" />
<s:url value="/resources/js/jquery-2.1.4.js" var="jqueryjs" />
<s:url value="/resources/js/bootstrap.js" var="bootstrapjs" />

<s:url value="/message/add" var="addTweet" />

<link href="${bootstrapStyle}" rel="stylesheet" />
<link href="${coreStyle}" rel="stylesheet" />
<script type="text/javascript" src="${jqueryjs}"></script>
<script type="text/javascript" src="${bootstrapjs}"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Tweet MVC</a>
		</div>
		<div id="navbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="${addTweet}">ajouter tweet</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="container">
	<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>${msg}</strong>
		</div>
	</c:if>


	<h1>liste des tweets</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Titre</th>
				<th>Corps</th>
				<th>Email</th>
				<th>Date</th>
				<th>Actions</th>
			</tr>
		</thead>
		<c:forEach items="${messages}" var="m" >
		<tr>
			<td>${m.id}</td>
			<td>${m.titre}</td>
			<td>${m.corps}</td>
			<td>${m.email}</td>
			<td>${m.dateMessage}</td>
			<td>
				<s:url value="/message/details/${m.id}" var="detailsTweet" />
				<s:url value="/message/edit/${m.id}" var="editTweet" />
				<s:url value="/message/delete/{mid}" var="removeTweet">
					<s:param name="mid" value="${m.id}" />
				</s:url>
			
				<button class="btn btn-info" onclick="location.href='${detailsTweet}'">Details</button>
				<button class="btn btn-primary" onclick="location.href='${editTweet}'">Editer</button>
				<button class="btn btn-danger" onclick="location.href='${removeTweet}'">Supprimer</button>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>