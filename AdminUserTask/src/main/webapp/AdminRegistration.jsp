<!DOCTYPE html>
<%@page import="java.util.Random"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Bootstrap Form</title>
</head>
<body>

<div class="container mt-5">
    <form method="post" action="/Add">
        
        <div class="form-group">
            <label for="inputField2">Admin Name</label>
            <input type="text" class="form-control" name="name" id="inputField2" placeholder="Enter Name">
        </div>
        <div class="form-group">
            <label for="inputField3">Username</label>
            <input type="text" class="form-control" name="username" id="inputField3" placeholder="Enter Username">
        </div>
         <div class="form-group">
            <label for="inputField3">Password</label>
            <input type="text" class="form-control" name="password" id="inputField3" placeholder="Enter Password">
        </div>
        <button type="submit"  class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
