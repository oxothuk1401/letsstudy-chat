<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY Video</title>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">

<body>
<%@ include file="include/header.jsp" %>
Session<br>
Ваше имя пользователя: ${sessionScope.userSession.username}<br>
Ваш email: ${sessionScope.userSession.email}<br>
Ваш пароль: ${sessionScope.userSession.password}<br>
Ваш роль: ${sessionScope.userSession.role}<br>
<c:if test="${sessionScope.userSession.role eq 'teacher'}">
        <%@ include file="teacher_part_anketa.jsp" %>
    <div class="container">
        <img src="/resources/images/temporary/profile1.jpg" width="1142" height="2048">
    </div>
</c:if>
<c:if test="${sessionScope.userSession.role eq 'user'}">
    <%@ include file="user_part_anketa.jsp" %>
</c:if>

<c:if test="${sessionScope.userSession.role eq 'admin'}">
    <%@ include file="admin_part_anketa.jsp" %>
</c:if>


</body>
</html>
