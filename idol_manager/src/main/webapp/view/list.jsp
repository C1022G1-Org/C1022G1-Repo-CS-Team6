<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>IDOL MANAGEMENT</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>IDol List</h1>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="btn btn-primary nav-link active" aria-current="page" href="view?action=create">Create
                        New IDOL</a>
                </li>
            </ul>
            <form class="d-flex" role="name_find" method="get">
                <div class="form-group">
                    <label for="name_find">Search:</label>
                    <input type="text" class="form-control" id="name_find" name="name_find" value="${name_find}">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</nav>
<table class="table table-striped">
    <tr>
        <td>STT</td>
        <td>ID</td>
        <td>Name</td>
        <td>Gender</td>
        <td>Date Of Birth</td>
        <td>Country</td>
        <td>Popular</td>
        <td>Skill</td>
        <td>Edit</td>
        <td>Delete</td>
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
            <td><!-- Button trigger modal -->
                <button type="button" onclick="infoEdit('${idol.id()}', '${idol.name()}')"
                        class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modelId">
                    Edit
                </button>
            </td>
            <td><!-- Button trigger modal -->
                <button type="button" onclick="infoDelete('${idol.id()}', '${idol.name()}')"
                        class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modelId">
                    Delete
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
<div class="row mt-3">
    <c:forEach var="idol" items="${idols}">
        <div class="col-md-4">
            <div class="card mb-3">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/180604_%EB%AE%A4%EC%A7%81%EB%B1%85%ED%81%AC_%EC%B6%9C%EA%B7%BC%EA%B8%B8_%EC%88%98%EC%A7%84_%285%29_%28cropped%29.jpg/331px-180604_%EB%AE%A4%EC%A7%81%EB%B1%85%ED%81%AC_%EC%B6%9C%EA%B7%BC%EA%B8%B8_%EC%88%98%EC%A7%84_%285%29_%28cropped%29.jpg"
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


<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete IDOL</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="view?action=delete" method="post">--%>
                    <input hidden id="idDelete" name="idDelete">
                    <span>Bạn có chắc chắn muốn xóa
                        <span style="color: red" id="nameDelete">
                        </span>
                    </span>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script> function infoDelete(id,name) {
    document.getElementById("idDelete").value = id;
    document.getElementById("nameDelete").innerText = name;
}</script>
aa
<%--<!-- Modal delete-->--%>
<%--<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h1 class="modal-title fs-5" id="exampleModalLabel3">Delete customer</h1>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <form action="customer?action=delete" method="post">--%>
<%--                    <input hidden id="idDelete" name="idDelete">--%>
<%--                    <span>--%>
<%--                        Bạn có chắc chắn muốn xóa <span style="color: red" id="nameDelete"></span>--%>
<%--                    </span>--%>
<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                        <button type="submit" class="btn btn-primary">Delete</button>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
