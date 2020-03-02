<%--
  Created by IntelliJ IDEA.
  User: 11496
  Date: 2020/3/2
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>学生信息</h1>
    <table>
        <tr>
            <th>学生编号</th>
            <th>学生姓名</th>
            <th>学生年龄</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.age}</td>
                <td>
                    <a href="/hello/findById${student.id}">修改</a>
                    <a href="/hello/deleteById${student.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
<a href="/save.jsp">添加学生</a>
</body>
</html>
