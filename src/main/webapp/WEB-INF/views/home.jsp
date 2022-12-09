<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>홈페이지</title>
</head>
<body>
<jsp:include page="/inc/top_index.jsp"/>
<h1>신규 회원 추가</h1>
<div class="text-center my-3"><h1>안녕하세요 관리자님 아래 버튼을 눌러 접속하세요</h1></div>
<br>
<br>
<br>
<br>
<br>
<div style="display: flex; justify-content: center;"><button type="button" onclick="location.href='board/list'" class="btn btn-primary" aria-pressed="true">게시판으로 이동</button></div>

<jsp:include page="/inc/bottom.jsp"/>
