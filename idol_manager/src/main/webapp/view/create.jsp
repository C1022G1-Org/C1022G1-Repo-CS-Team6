<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <center>
        <h1>User Management</h1>
        <h2>
            <a href="idol-manager">List All Idol</a>
        </h2>
        <h2>Add New Idol</h2>
    </center>
    <div align="center">
        <form method="post">
            <table border="1" cellpadding="5" >
                <tr>
                    <th> Name:</th>
                    <td>
                        <input type="text" name="name" id="name" size="50" maxlength="50" required/>
                    </td>
                </tr>
                <tr>
                    <th>Birth:</th>
                    <td>
                        <input type="date" name="date_of_birth" id="date_of_birth" size="50" required/>
                    </td>
                </tr>
                <tr>
                    <th> Gender:</th>
                    <td>
                        <input type="radio" name="gender"  value="Male"> Male
                        <input type="radio" name="gender"  value="Female"> Female
                    </td>
                </tr>
                <tr>
                    <th>Country:</th>
                    <td>
                        <input type="text" name="country" id="country" size="50" maxlength="50" required/>
                    </td>
                </tr>
                <tr>
                    <th>Skill:</th>
                    <td>
                        <input type="text" name="skill" id="skill" size="50" maxlength="50" required/>
                    </td>
                </tr>
                <tr>
                    <th>Image:</th>
                    <td>
                        <input type="text" name="image" id="image" size="50" maxlength="200" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Create"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script>
    var today = new Date().toISOString().split('T')[0];
    document.getElementById("date_of_birth").setAttribute("max", today);
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