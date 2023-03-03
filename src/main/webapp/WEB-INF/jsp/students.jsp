<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.02.2023
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
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
</head>
<body>
<button hrev=""><a href=""> на главную</a></button>
<h2 class="text-shadow-2" align="center">Список студентов</h2>

<a href="creatingStudents"><button href="" class="gradient-button">Создать студента</button></a>
<a href="StudentProgress.jsp"><button href="" class="gradient-button">Успеваемость студента...</button></a>
<a href="ModifyingST.jsp"><button href="" class="gradient-button">внести изменения студента</button></a>
<table border="">
  <caption>Список студентов</caption>
  <tbody>
  <tr>
    <th></th>
    <th>фамилия</th>
    <th>Имя</th>
    <th>группа</th>
    <th>Дата поступления</th>

  </tr>
  <c:forEach  items = "${students}" var="s">
  <tr>
    <td><input type="checkbox"></td>
    <td>${s.surname}</td>
    <td>${s.name}</td>
    <td>${s.group.name}</td>
    <td><f:formatDate value="{s.date}" pattern="d/mm/yyyy"/> </td>
  </tr>
  </c:forEach>


  </tbody>
</table>





</body>
</html>
