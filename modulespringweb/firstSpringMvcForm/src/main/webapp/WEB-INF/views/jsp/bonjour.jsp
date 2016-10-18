<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bonjour</title>
<s:url value="/resources/css/bonjour.css" var="coreStyle" />
<link href="${coreStyle}" rel="stylesheet" />
</head>
<body>
<h2>${message}</h2>
<form method="post" action="add">
	op1: <input type="number" name="oper1" />
	op2: <input type="number" name="oper2" /><br />
	<input type="submit" value="ajouter" />
</form>
</body>
</html>