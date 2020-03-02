<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2020/3/2
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/hello/update" method="post">
    Id:<input type="text" name="id" value="${student.id}" readonly>
    Name:<input type="text" name="name" value="${student.name}">
    age:<input type="text" name="age" value="${student.age}">
    <input type="submit" value="提交">
</form>
</body>
</html>
