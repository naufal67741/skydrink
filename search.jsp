<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Search Your Drink Here !</title>
</head>
<body>
<%@ include file = "/connect.jsp" %>
    <%@ page import="java.sql.*" %>
    <%
    if(session.getAttribute("user_name") == null){ %>
      <%@include file="layouts/navbar_guest.jsp" %>  
    <% } else if(session.getAttribute("user_name").equals("Admin")){ %>
      <%@include file="layouts/navbar_admin.jsp" %>  
    <% }else if(session.getAttribute("user_name") != null){ %>
      <%@include file="layouts/navbar_member.jsp" %>  
    <% } %>
    <div class="container mt-5">
        <form action="search-result.jsp" method="POST">
            <div class="form-group">
              <label for="exampleInputEmail1">Sweetness Level</label>
              <input type="number" name = "sweetnessLevel" placeholder="0-4" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Spicy Level</label>
                <input type="number" name = "spicyLevel" placeholder="0-4" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Malty Level</label>
                <input type="number" name = "maltyLevel" placeholder="0-4" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
          </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>