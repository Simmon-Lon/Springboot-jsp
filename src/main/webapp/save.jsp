<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2020/3/2
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/hello/save" method="post">
        Id:<input type="text" name="id">
        Name:<input type="text" name="name">
        age:<input type="text" name="age">
        <input type="submit" value="提交">
    </form>
</body>
</html>
