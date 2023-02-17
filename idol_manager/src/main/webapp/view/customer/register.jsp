<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/2/2023
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="/css/bootstrap.css">
<style>
    .red{
        color: red;
        font-weight: bolder;
    }
</style>
<body>
<form action="" method="post">
    <h1 class="text-center red">Đăng kí</h1>
    <div class="text-center pt-5">
        <label for="name">Nhập tên người dùng</label>
        <input type="text" name="name" id="name">
    </div>
    <div class="text-center pt-2">
        <label for="dateOfBirth">Nhập ngày tháng năm sinh</label>
        <input type="text" name="dateOfBirth" id="dateOfBirth">
    </div>
    <div class="text-center pt-2">
        <label for="gender">Nhập giới tính</label>
        <input type="text" name="gender" id="gender">
    </div>
    <div class="text-center pt-2">
        <label for="email">Nhập email đăng nhập</label>
        <input type="text" name="email" id="email">
    </div>
    <div class="text-center pt-2">
        <label for="newPassword">Nhập mật khẩu</label>
        <input type="text" name="newPassword" id="newPassword">
    </div>
    <div class="text-center">
        <input class="btn btn-primary" type="submit" value="Đăng kí">
    </div>
</form>
<script src="/js/bootstrap.js"></script>
</body>
</html>
