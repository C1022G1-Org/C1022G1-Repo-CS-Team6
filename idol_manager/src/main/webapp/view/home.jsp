<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/2/2023
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/home.css">
<html>
<head>
    <title>IDOL MANAGER</title>
</head>

<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="home"> <img src="https://www.clipartmax.com/png/full/264-2643185_%C2%A0-red.png"
                                                   height="30px" alt="IDOL"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Favourite</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="idol-manager">Idol</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customer/list-customer">Customer</a>
                    </li>
                </ul>
                <li class="nav-item hiding">
                    <c:if test="${sessionScope.acc != null}">
                <li class="nav-item hiding">
                    <button type="button" class="btn btn-outline-primary"><a
                            href="/login?action=logout">Xin chào ${sessionScope.acc.name} Logout</a></button>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <button type="button" class="btn btn-outline-primary"><a
                                href="/view/customer/login.jsp">Login</a></button>

                    </li>
                </c:if>
                </li>
            </div>
        </div>
    </nav>
</div>
    <div class="row mt-3 container-fluid">
        <c:forEach var="idol" items='${requestScope["idols"]}'>
            <div class="col-md-4">
                <div class="card mb-3">
                    <img src="https://loremflickr.com/320/240?random=${Math.random()*100}"
                         class="card-img-top" alt="${idol.name}">
                    <div class="card-body">
                        <h5 class="card-title">${idol.name}</h5>
                        <p class="card-text">Gender: ${idol.gender}</p>
                        <p class="card-text">Date of Birth: ${idol.dateOfBirth}</p>
                        <p class="card-text">Country: ${idol.country}</p>
                        <p class="card-text">Popular: ${idol.popular}</p>
                        <p class="card-text">Skill: ${idol.skill}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

</body>
</html>
