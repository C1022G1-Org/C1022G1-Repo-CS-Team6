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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                        <a class="nav-link" href="idol-manager">Idol</a>
                    </li>
                </ul>
                <li class="nav-item hiding">
                    <c:if test="${sessionScope.acc != null}">
                <li class="nav-item hiding">
                <span class="pt-3">Xin chào ${sessionScope.acc.name}</span>
                    <button type="button" class="btn btn-outline-primary"><a
                            href="/login?action=logout">Logout</a></button>
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

    <div
            id="carouselBasicExample"
            class="carousel slide carousel-fade"
            data-mdb-ride="carousel"
    >
        <!-- Indicators -->
        <div class="carousel-indicators">
            <button
                    type="button"
                    data-mdb-target="#carouselBasicExample"
                    data-mdb-slide-to="0"
                    class="active"
                    aria-current="true"
                    aria-label="Slide 1"
            ></button>
            <button
                    type="button"
                    data-mdb-target="#carouselBasicExample"
                    data-mdb-slide-to="1"
                    aria-label="Slide 2"
            ></button>
            <button
                    type="button"
                    data-mdb-target="#carouselBasicExample"
                    data-mdb-slide-to="2"
                    aria-label="Slide 3"
            ></button>
        </div>

        <!-- Inner -->
        <div class="carousel-inner">
            <!-- Single item -->
            <div class="carousel-item active">
                <img
                        src="https://wallpapercave.com/wp/wp4601048.jpg"
                        class="d-block w-100"
                        alt="Sunset Over the City"
                />
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>
                        Nulla vitae elit libero, a pharetra augue mollis interdum.
                    </p>
                </div>
            </div>

            <!-- Single item -->
            <div class="carousel-item">
                <img
                        src="https://wallpapercave.com/wp/wp4601147.jpg"
                        class="d-block w-100"
                        alt="Canyon at Nigh"
                />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </p>
                </div>
            </div>

            <!-- Single item -->
            <div class="carousel-item">
                <img
                        src="https://i.pinimg.com/originals/ac/25/72/ac2572f06bfafbe12821843c92eb1ff1.jpg"
                        class="d-block w-100"
                        alt="Cliff Above a Stormy Sea"
                />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>
                        Praesent commodo cursus magna, vel scelerisque nisl consectetur.
                    </p>
                </div>
            </div>
        </div>
        <!-- Inner -->

        <!-- Controls -->
        <button
                class="carousel-control-prev"
                type="button"
                data-mdb-target="#carouselBasicExample"
                data-mdb-slide="prev"
        >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button
                class="carousel-control-next"
                type="button"
                data-mdb-target="#carouselBasicExample"
                data-mdb-slide="next"
        >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- Carousel wrapper -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</body>
</html>
