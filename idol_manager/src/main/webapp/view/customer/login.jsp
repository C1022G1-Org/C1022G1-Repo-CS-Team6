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
<div class="container-fluid">
    <form action="" method="get">
        <h1 class="text-center pt-2 red">Đăng nhập</h1>
        <div class="pt-5">
            <label for="email">Tài khoản: </label>
            <input type="text" name="email" id="email">
        </div>
        <div class="pt-3">
            <label for="password">Mật khẩu: </label>
            <input type="password" name="password" id="password">
        </div>
        <div>
            <input class="btn btn-primary" type="submit" value="Đăng nhập">
        </div>
        <div>
            <form action="/idol-manager?action=register">
            <input class="btn btn-primary" type="submit" value="Đăng kí">
            </form>
        </div>
    </form>

</div>
<script src="/js/bootstrap.js"></script>
</body>
</html>
