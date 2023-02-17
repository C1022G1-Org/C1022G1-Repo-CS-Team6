<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2/17/2023
  Time: 7:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Idol Management Application</title>
</head>
<body>
<center>
    <h1>Idol Management</h1>
    <h2>
        <a href="?action=idol">List All Idols</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Idol
                </h2>
            </caption>
            <c:if test="${user != null}">
                <input type="hidden" name="id" value="<c:out value='${idol.id}' />"/>
            </c:if>
            <tr>
                <th>Idol Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${idol.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Gender:</th>
                <td>
                    <input type="text" name="gender" size="45"
                           value="<c:out value='${idol.gender}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Birth:</th>
                <td>
                    <input type="text" name="birth" size="45"
                           value="<c:out value='${idol.birth}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" size="45"
                           value="<c:out value='${idol.country}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Popular:</th>
                <td>
                    <input type="text" name="popular" size="45"
                           value="<c:out value='${idol.popular}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Skill:</th>
                <td>
                    <input type="text" name="skill" size="45"
                           value="<c:out value='${idol.skill}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
