<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY главная</title>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<div>
    <a href="${pageContext.request.contextPath}/show_profile"><p style="color: black" >PROFILE</p></a>
</div>
Вы успешно зарагестрированны в качестве студента<br>
MOdelAtribute<br>
    Ваше имя пользователя: ${userModel.username}<br>
    Ваш email: ${userModel.email}<br>
    Ваш пароль: ${userModel.password}<hr>
Session<br>
    Ваше имя пользователя: ${sessionScope.userSession.username}<br>
    Ваш email: ${sessionScope.userSession.email}<br>
    Ваш пароль: ${sessionScope.userSession.password}<br>
</body>
</html>
