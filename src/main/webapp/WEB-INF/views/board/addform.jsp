<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>신규 회원 추가</title>
</head>
<body>
<jsp:include page="/inc/top.jsp"/>
<h1>신규 회원 추가</h1>

<main role="main" class="container">
    <div>
        <div class="text-center my-3"><h1>신규 회원 추가</h1></div>
        <form action="addok" method="post">
            <table class="table">
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="userid"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password"/></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>Sex</td>
                    <td><input type="text" name="sex"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="number" name="age"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type='text' name="address"/></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><input type="text" name="phone"/></td>
                </tr>
            </table>
            <button type="button" onclick="location.href='list'" class="btn btn-primary" aria-pressed="true">목록
                보기
            </button>
            <button type="submit" class="btn btn-primary" aria-pressed="true">회원 추가</button>
        </form>
    </div>
</main>
<jsp:include page="/inc/bottom.jsp"/>
</body>
</html>