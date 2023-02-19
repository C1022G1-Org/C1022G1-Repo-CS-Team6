<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <button type="submit" class="btn btn-primary">Search</button>
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
