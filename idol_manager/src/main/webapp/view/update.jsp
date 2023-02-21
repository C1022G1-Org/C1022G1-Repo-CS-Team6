<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<center>
    <h1>Idol Management</h1>
    <h2>
        <a href="/idol-manager">List All Playlist</a>
    </h2>

</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">

            <input type="hidden" name="id" value="${idol.id}">

            <tr>
                <div class="form-group">
                    <th><label for="name">Name</label></th>
                    <td><input type="text" name="name" id="name" value="${idol.name}" required></td>
                </div>
            </tr>
            <tr>
                <div class="form-group">
                    <th><label>Gender</label></th>
                    <td><input type="radio" name="gender" value="male"> Male
                        <input type="radio" name="gender" value="female"> Female
                    </td>
                </div>
            </tr>
            <tr>
                <div class="form-group">
                    <th><label for="date_of_birth">Birth</label></th>
                    <td><input type="date"
                               class="form-control" name="date_of_birth" id="date_of_birth" value="${idol.dateOfBirth}"
                               required></td>
                </div>
            </tr>
            <tr>
                <div class="form-group">
                    <th><label for="country">Country</label></th>
                    <td><input type="text"
                               class="form-control" name="country" id="country" value="${idol.country}" required></td>
                </div>
            </tr>
            <tr>
                <div class="form-group">
                    <th><label for="skill">Skill</label></th>
                    <td><input type="text"
                               class="form-control" name="skill" id="skill" value="${idol.skill}" required></td>
                </div>
            </tr>
            <tr>
                <div class="form-group">
                    <th><label for="image">Image</label></th>
                    <td><input type="text"
                               class="form-control" name="image" id="image" value="${idol.img}" required></td>
                </div>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="btn btn-primary " value="Xác nhận"></td>
            </tr>
        </table>
    </form>
</div>
<script>
    var today = new Date().toISOString().split('T')[0];
    document.getElementById("date_of_birth").setAttribute("max", today);
</script>
</body>
</html>