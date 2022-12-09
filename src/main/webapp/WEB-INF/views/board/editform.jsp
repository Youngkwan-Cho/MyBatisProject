<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false"
		 pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>회원 정보 수정</title>
</head>
<body>
<jsp:include page="/inc/top_edit.jsp"/>
<h1>회원 정보 수정</h1>

<main role="main" class="container">
	<div>
		<div class="text-center my-3">
			<h1>회원 정보 수정</h1>
		</div>
		<form:form action="../editok" method="POST" modelAttribute="u">
			<form:hidden path="sid"/>
			<table class="table">
				<tr>
					<td>User ID</td>
					<td><form:input path="userid" disabled="true"/></td>
				</tr>
				<tr>
					<td>Username</td>
					<td><form:input path="username"/></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email"/></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:input path="address"/></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><form:input path="phone"/></td>
				</tr>
			</table>
			<button type="button" onclick="location.href='../list'" class="btn btn-primary" aria-pressed="true">목록 보기</button>
			<button type="submit" class="btn btn-primary" aria-pressed="true">수정하기</button>
		</form:form>
	</div>
</main>
<jsp:include page="/inc/bottom.jsp"/>
</body>
</html>