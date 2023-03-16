
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="resources/css/imploee.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="../../resources/js/function.js/"></script>
</head>
<body>
<button hrev=""><a href="/main/webapp/index"> на главную</a></button>
<h2 class="text-shadow-2" align="center">Список студентов</h2>

          <form action="" method ="get"></form>
     <a><form action="creatingStudents" method="get">
           <button class="gradient-button">Создать студента</button>
    </form></a>


     <a href="StudentProgress.jsp"><button href="" class="gradient-button">Успеваемость студента...</button></a>

     <a href="ModifyingST.jsp"><button  class="gradient-button">внести изменения студента</button></a>
     <a><button onclick="deleteStudents()" class="gradient-button">Удалить выбранного студента</button></a>

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
            <form>
               <label>
                   <td><input type="checkbox" value="${s.id}" name="studentId"></td>
                   <td>${s.surname}</td>
                   <td>${s.name}</td>
                   <td>${s.group.name}</td>
                   <td><f:formatDate value="${s.date}" pattern="d/MM/yyyy"/> </td>
               </label>
            </form>
         </tr>
     </c:forEach>


  </tbody>
</table>





</body>

  <form action="/student_delete" method="post" id="deleteForm">
    <input type="hidden" name="idsForDelete" id="idsForDelete">
  </form>
</html>
