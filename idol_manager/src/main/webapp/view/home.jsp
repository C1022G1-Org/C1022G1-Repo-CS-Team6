<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/2/2023
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<link rel="stylesheet" href="/css/bootstrap.css">--%>
<link rel="stylesheet" href="/css/home.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/css/bootstrap.css">
<html>
<head>
    <title>IDOL MANAGER</title>
</head>

<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="home"> <img
                    src="https://www.clipartmax.com/png/full/264-2643185_%C2%A0-red.png"
                    height="30px" alt="IDOL"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse p-3" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="idol-manager">Idol</a>
                    </li>
                </ul>
                <li class="nav-item hiding ml-auto" style="list-style: none;">
                    <c:if test="${sessionScope.acc != null}">
                <li class="nav-item hiding" style="list-style: none;">
                    <span class="pt-3">Xin chào ${sessionScope.acc.name}</span>
                    <button type="button" class="btn btn-outline-primary"><a
                            href="/login?action=logout">Logout</a></button>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item" style="list-style: none;">
                        <button type="button" class="btn btn-outline-primary"><a
                                href="/view/customer/login.jsp">Login</a></button>

                    </li>
                </c:if>
                </li>
            </div>
        </div>
    </nav>

    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://wallpapercave.com/wp/wp4601048.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="https://barefootsworld.net/wp-content/uploads/2019/07/Twice.jpg" alt="Chicago">
            </div>
            <div class="carousel-item">
                <img src="https://i.pinimg.com/originals/ac/25/72/ac2572f06bfafbe12821843c92eb1ff1.jpg" alt="New York">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
    </button>
</div>
<!-- Testimonial section-->
<div class="py-5 bg-light">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-10 col-xl-7">
                <div class="text-center">
                    <div class="fs-3 mb-4 fst-italic">"Our company will help you find the right person for your
                        needs."
                    </div>
                    <div class="d-flex align-items-center justify-content-center">
                        <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..."/>
                        <div class="fw-bold">
                            Nghia Tokude
                            <span class="fw-bold text-primary mx-1">/</span>
                            CEO, Director
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog preview section-->
<section class="py-5">
    <div class="container px-5 my-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-8 col-xl-6">
                <div class="text-center">
                    <h2 class="fw-bolder">Chia sẻ từ Đội sáng lập</h2>
                    <p class="lead fw-normal text-muted mb-5">Tạo lập cộng đồng là sứ mạng của chúng ta</p>
                </div>
            </div>
        </div>
        <div class="row gx-5">
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top"
                         src="https://danviet.mediacdn.vn/296231569849192448/2022/7/18/a33b29c7c6b604e85da7-1658133524535230644268.jpg"
                         alt="..."/>
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">
                            Hãy tôn trọng đam mê</h5></a>
                        <p class="card-text mb-0">Mọi điều bạn suy nghĩ sẽ thành hiện thực</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top"
                         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbo4JPssM635rhA2nP5bmXpFk6JxMMSeFV8g&usqp=CAU"
                         alt="..."/>
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">
                            Hãy tôn Dữ tiền của bạn</h5></a>
                        <p class="card-text mb-0">Tiền của bạn sẽ là của tôi.
                            <br> Nhứng thứ bạn thích cũng không khác đâu ^.^! . . . </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-5">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src="https://cdn.codegym.vn/wp-content/uploads/2020/04/Banner-2-min.jpg"
                         alt="..."/>
                    <div class="card-body p-4">
                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                        <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">
                            CodeGym luôn bên bạn</h5></a>
                        <p class="card-text mb-0">Khi bạn mệt mọi hãy nhớ chúng tôi luôn ở bên. Âm thầm lặng lẽ, chúng
                            tôi sẽ giúp bạn vượt qua.
                            <br><h6>CodeGym không chỉ là một cái tên, nó là một NIỀM TIN</h6> </p>
                    </div>
                </div>
            </div>
<%--            Footer--%>
            <div class="footer-basic">
                <footer>
                    <div class="social"><a href="#"><i class="icon"></i></a><a href="#"><i
                            class="icon"></i></a><a href="#"><i class="icon"></i></a><a
                            href="#"><i class="icon"></i></a></div>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="home">Home</a></li>
                        <li class="list-inline-item"><a href="idol-manager">Idol Manager</a></li>
                    </ul>
                    <p class="copyright">Group 6 C1022G1</p>
                </footer>
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
<style>
    /* Make the image fully responsive */
    .carousel-inner img {
        width: 100%;
        height: 100%;
    }
    .footer-basic {
        padding:40px 0;
        background-color:#ffffff;
        color:#4b4c4d;
    }

    .footer-basic ul {
        padding:0;
        list-style:none;
        text-align:center;
        font-size:18px;
        line-height:1.6;
        margin-bottom:0;
    }

    .footer-basic li {
        padding:0 10px;
    }

    .footer-basic ul a {
        color:inherit;
        text-decoration:none;
        opacity:0.8;
    }

    .footer-basic ul a:hover {
        opacity:1;
    }

    .footer-basic .social {
        text-align:center;
        padding-bottom:25px;
    }

    .footer-basic .social > a {
        font-size:24px;
        width:40px;
        height:40px;
        line-height:40px;
        display:inline-block;
        text-align:center;
        border-radius:50%;
        border:1px solid #ccc;
        margin:0 8px;
        color:inherit;
        opacity:0.75;
    }

    .footer-basic .social > a:hover {
        opacity:0.9;
    }

    .footer-basic .copyright {
        margin-top:15px;
        text-align:center;
        font-size:13px;
        color:#aaa;
        margin-bottom:0;
    }
</style>
</html>
