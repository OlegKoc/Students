<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="resources/css/imploee.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>Document</title>
</head>
<body>
<button><a href="/" > на главную</a></button>
<button><a href="/students" > назад</a></button>
<h2 class="text-shadow-2" align="center">Создание студента</h2>
<h3 align="center">Для создания студента, заполните все поля и нажмите "Создать"</h3>\




  <fieldset>
    <legend>Контактная информация</legend>
    <form action="/creatingStudents" method="post">

    <p><label>Фамилия<input name="surname" type="text"></label></p> //   id="surname"
    <p><label>Имя<input name="name" type="text"></label></p>
    <p><label>группа<input name="group" type="text"></label></p>
    <p><label>Дата поступления<input type="date" id="datetime-local"></label></p>

     <button class="gradient-button">создать</button>

  </form>
</fieldset>



<c:if test="${error  eq 1}">
  <h5> Поля не должны быть пустыми!!!</h5>
</c:if>



</body>
</html>
