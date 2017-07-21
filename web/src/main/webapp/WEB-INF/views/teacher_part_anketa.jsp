<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<div class="container">
    <p>Анкета преподователя</p>
    <div><input type="text" placeholder="Ваше Имя"></div>
    <div><input type="text" placeholder="Ваша Фамилия"></div>
    <div><input type="text" placeholder="Ваш Телефон"></div>
    <form enctype="multipart/form-data" method="post">
        <p>Загрузите ваши фотографии на сервер</p>
        <p><input type="file" name="allTypes" multiple>
            <input type="submit" value="Отправить"></p>
    </form>
</div>
