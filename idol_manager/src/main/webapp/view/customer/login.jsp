<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/2/2023
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>

</head>
<link rel="stylesheet" href="/css/bootstrap.css">
<style>
    .red{
        color: red;
        font-weight: bolder;
    }
</style>
<body>
<form action="/login" method="post">
    <h1 class="text-center red pt-2">Đăng nhập</h1>
    <div class="text-center pt-5"> <label for="username">Tài khoản</label>
        <input type="text" name="username" id="username">
    </div>
    <div class="text-center pt-2"> <label for="password">Mật khẩu</label>
        <input type="password" name="password" id="password">
    </div>
    <div class="text-center">
        <p class="text-danger">${mess}</p>
    </div>
    <div class="text-center pt-2">
        <input class="btn btn-primary" type="submit" value="Đăng nhập">
        <a href="/login?action=register" type="submit" class="btn btn-danger">Đăng kí</a>
    </div>
</form>
<script src="/js/bootstrap.js"></script>
</body>
</html>
