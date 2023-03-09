<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <title>Disciplines List</title>
</head>
<body>
<button><a href="/" > на главную</a></button>
<h2 class="text-shadow-2" align="center">Дисциплины</h2>
<ul><a href="Modifying1.html"><button href="" class="gradient-button">Создание/изменение дисциплины</button></a></ul>

<table border="1">
    <tbody>
       <tr>
           <th></th>


           <th>ID</th>
           <th>Дисциплина</th>

           <c:forEach  items = "${discipline}" var="s">
                 <tr>
                    <td><input type="checkbox"></td>
                    <td>${s.ID}</td>
                    <td>${s.name}</td>

                 </tr>
          </c:forEach>





    </tr>

    </tbody>

</table>

</body>
</html>
