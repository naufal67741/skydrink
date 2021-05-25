<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/style.css">
    <title>Document</title>
</head>
<body>
    <%
    if(session.getAttribute("user_name") == null){ %>
      <%@include file="layouts/navbar_guest.jsp" %>  
    <% } else if(session.getAttribute("user_name").equals("Admin")){ %>
      <%@include file="layouts/navbar_admin.jsp" %>  
    <% }else if(session.getAttribute("user_name") != null){ %>
      <%@include file="layouts/navbar_member.jsp" %>  
    <% } %>
    <div class="body-content">
        <div class="container container-body">
            <form action="submit-register.jsp" method="POST">
              <div class="form-group">
                <label for="exampleInputEmail1" id="labelForm">Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="name">
              </div>
                <div class="form-group">
                  <label for="exampleInputEmail1" id="labelForm">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1" id="labelForm">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1" id="labelForm">Phone Number</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" name="phone">
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
            <a href="login.jsp" class="aHref">Already got an account ? Login Here !</a>
        </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>