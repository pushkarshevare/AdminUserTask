<!DOCTYPE html>
<%@page import="com.task.model.User"%>
<%@page import="com.hospital.model.Doctor"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>All Data</title>
</head>
<body>

<div class="container mt-5">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">User's Name</th>
                <th scope="col">Number</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <%List<User> user = (List<User>)request.getAttribute("user");
            for(User u:user)
            {
            %>
                <td><%=u.getId() %></td>
                <td><%=u.getName() %></td>
                <td><%=u.getNumber() %></td>
            </tr>
            <%
            }
            %>
            <!-- Add more rows as needed -->
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
