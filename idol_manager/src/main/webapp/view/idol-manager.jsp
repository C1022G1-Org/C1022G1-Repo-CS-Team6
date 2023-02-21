<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Idol-Manager</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.css">

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
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 p-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Idol</a>
                    </li>
                </ul>
                <form class="d-flex ml-auto p-3" role="search">
                    <input type="text" class="form-control me-2 ml-auto" placeholder="Search" name="name_find"
                           aria-label="Search" value="${name_find}">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <li class="nav-item hiding" style="list-style: none">
                    <c:if test="${sessionScope.acc != null}">
                <li class="nav-item hiding" style="list-style: none">
                    <span class="pt-3">Xin chào ${sessionScope.acc.name}</span>
                    <button type="button" class="btn btn-outline-primary"><a
                            href="/login?action=logout">Logout</a></button>
                </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item" style="list-style: none">
                        <button type="button" class="btn btn-outline-primary"><a
                                href="/view/customer/login.jsp">Login</a></button>

                    </li>
                </c:if>
                </li>
            </div>
        </div>
    </nav>
    <div>
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="btn btn-primary nav-link active" aria-current="page" href="idol-manager?action=create">Create
                    New IDOL</a>
            </li>
        </ul>
    </div>
</div>
<div class="container-fluid">
    <table class="table table-striped">
        <tr>
            <th>STT</th>
            <th>ID</th>
            <th>Name</th>
            <th>Date Of Birth</th>
            <th>Gender</th>
            <th>Country</th>
            <th>Skill</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items='${requestScope["idols"]}' var="idol" varStatus="stt">
            <tr>
                <td>${stt.count}</td>
                <td>${idol.id}</td>
                <td>${idol.name}</td>
                <td>${idol.gender}</td>
                <td>${idol.dateOfBirth}</td>
                <td>${idol.country}</td>
                <td>${idol.skill}</td>
                <td><img style="height: 150px" src="${idol.img}" alt="..."></td>
                <td><a href="idol-manager?action=update&id=${idol.id}" type="button"
                       class="btn btn-primary btn-sm">Edit</a></td>
                <td>
                    <button type="button" onclick="infoDelete('${idol.id}','${idol.name}')"
                            class="btn btn-danger btn-sm"
                            data-toggle="modal" data-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="row mt-3 p-2">
        <c:forEach var="idol" items="${idols}">
            <div class="col-md-4">
                <div class="card mb-3">
                    <img src="${idol.img}"
                         class="card-img-top" alt="${idol.name}">
                    <div class="card-body">
                        <h5 class="card-title">${idol.name}</h5>
                        <p class="card-text">Gender: ${idol.gender}</p>
                        <p class="card-text">Date of Birth: ${idol.dateOfBirth}</p>
                        <p class="card-text">Country: ${idol.country}</p>
                        <p class="card-text">Skill: ${idol.skill}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<%--Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Box</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="idol-manager?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" id="idDelete" name="deleteId">
                    <span>You may want to delete </span><span style="color: red" class="fw-bolder"
                                                              id="nameDelete"></span> ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
            </form>
        </div>
    </div>
</div>
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
<script>
    function infoDelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
