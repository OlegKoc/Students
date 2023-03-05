<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.02.2023
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="resources/css/imploee.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<button><a href="/" > на главную</a></button>
<button><a href="students" > назад</a></button>
<h2 class="text-shadow-2" align="center">Создание студента</h2>
<h3 align="center">Для создания студента, заполните все поля и нажмите "Создать"</h3>\



<form action="/creatingStudents" method="post">
  <fieldset>
    <legend>Контактная информация</legend>


    <p><label>Фамилия</label><input name="surname" id="surname"></p>
    <p><label>Имя</label><input name="name" id="name"></p>
    <p><label>группа</label><input name="group" id="group"></p>
    <p><label>Дата поступления</label><input type="date" id="datetime-local"></p>
  </fieldset>
     <button href="" class="gradient-button">создать</button>

</form>

<c:if test="${error  eq 1}">
  <h5> Поля не должны быть пустыми!!!</h5>
</c:if>



</body>
</html>
