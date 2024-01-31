<!DOCTYPE html>
<%@page import="java.util.Random"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>USER</title>
</head>
<body>

<div class="container mt-5">
    <form method="post" action="/loginUser">
   
        
        <div class="form-group">
            <label for="inputField2">Username</label>
            <input type="text" class="form-control" name="username" id="inputField2" placeholder="Enter Username">
        </div>
        <div class="form-group">
            <label for="inputField3">Password</label>
            <input type="password" class="form-control" name="password" id="inputField3" placeholder="Enter Password">
        </div>
        <a href="UserRegistration.jsp" >New User?</a><br><br>
        <button type="submit"  class="btn btn-primary">Submit</button>
        <a href="index.html" class="btn btn-primary">Back</a><br><br>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
