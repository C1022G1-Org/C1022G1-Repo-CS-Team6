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
    <link rel="stylesheet" href="/css/home.css">
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
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Favourite</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Idol</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customer/list-customer">Customer</a>
                    </li>
                </ul>
                <form class="d-flex ml-auto" role="search">
                    <input type="text" class="form-control me-2 ml-auto" placeholder="Search" name="name_find"
                           aria-label="Search" value="${name_find}">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <li class="nav-item hiding" style="list-style: none">
                    <c:if test="${sessionScope.acc != null}">
                <li class="nav-item hiding" style="list-style: none">
                    <button type="button" class="btn btn-outline-primary"><a
                            href="home">Xin chào ${sessionScope.acc.name} Logout</a></button>
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
                <a class="btn btn-primary nav-link active" aria-current="page" href="view?action=create">Create
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
        <th>Popular</th>
        <th>Skill</th>
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
            <td>${idol.popular}</td>
            <td>${idol.skill}</td>
            <td><a href="view?action=edit&id=${idol.id}">Edit</a></td>
            <td>
                <button type="button" onclick="infoDelete('${idol.id}','${idol.name}')" class="btn btn-danger"
                        data-toggle="modal" data-target="#exampleModal">
                    Delete
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
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
                    <span>You may want to delete </span><span id="nameDelete"></span> ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="container-fluid">

    <footer class="text-center text-lg-start" style="background-color: #db6930;">
        <div class="container d-flex justify-content-center py-5">
            <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                <i class="fab fa-facebook-f"></i>
            </button>
            <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                <i class="fab fa-youtube"></i>
            </button>
            <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                <i class="fab fa-instagram"></i>
            </button>
            <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                <i class="fab fa-twitter"></i>
            </button>
        </div>

        <!-- Copyright -->
        <div class="text-center text-white p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023- Copyright:
            <a class="text-white" href="#">NHÓM 6 PRO TEAM</a>
        </div>
        <!-- Copyright -->
    </footer>
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
</html>
