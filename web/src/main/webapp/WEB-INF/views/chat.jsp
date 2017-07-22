<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY Chat</title>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<%@ include file="include/header.jsp" %>
<div class="container">
    <h2 class="text-center">Lets Study CHAT</h2>
    <div class="row">
        <div class="col-md-4" style="height: 250px;  border: solid #0d6db6; overflow: auto">
            <p>После загрузки сайта на хостинг </p>
            <p>не групируются сообщения я над этим работаю!</p>
            <c:forEach items="${sessionScope.res}" var="res">
                <form action="show_this_chat" method="post">
                    <input type="hidden" name="img" value="${res.img}">
                    <div class="figure-img">
                        <img src="/resources/images/teacher/${res.img}" width="50" height="50">
                        <input class="btn-sm btn-warning" type="submit" value="Show chat with ${res.username}">
                    </div>
                </form>
            </c:forEach>
        </div>
        <div id="mssg" class="col-md-8" style="height: 250px; border: solid #0d6db6; overflow: auto">
            <p>После загрузки сайта на хостинг </p>
            <p>не отправляются сообщения так же работаю!</p>
            <c:forEach items="${showThisChat}" var="showThisChat">
                <div class="bg-success">
                    <p>${showThisChat.message}</p>
                    <p>${showThisChat.date}</p>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <form action="show_my_chats" method="post">
                <input type="submit" class="btn-sm btn-primary col-md-12" value="Show my chats">
            </form>
        </div>
        <div class="col-md-8">
            <form method="POST" modelAttribute="chat" action="send_mssg">
                <input class="col-md-8" id="password" name="password" type="text" placeholder="message"
                       onclick="doAjax()"/>
                <input class="col-md-2 btn-primary" type="submit" value="Send">
            </form>
        </div>
    </div>
</div>
</body>
