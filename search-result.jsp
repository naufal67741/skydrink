<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Search Result</title>
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
            <div class="card-columns">
            <%
                String sweetnessLevel = (String)request.getParameter("sweetnessLevel");
                String spicyLevel = (String)request.getParameter("spicyLevel");
                String maltyLevel = (String)request.getParameter("maltyLevel");

                String query = "SELECT * FROM items WHERE sweetness = "+sweetnessLevel+" AND spicy = "+spicyLevel+" AND malty = "+maltyLevel;
                
                ResultSet rs = st.executeQuery(query);
                while(rs.next()){
            %>
            <%
                  String error = (String) request.getParameter("err");
                  if(error != null){ %>
                    <h1 class="errorStyling"><%= error %></h1>
                <% } %>
                    <div class="card">
                      <img src="../dist/img/{{$d->image}}" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title"><%=rs.getString("name")%></h5>
                        <p class="card-text"><%=rs.getString("description")%></p>
                      </div>
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item">Sweetness Level : <%=rs.getInt("sweetness")%></li>
                        <li class="list-group-item">Spicy Level : <%=rs.getInt("spicy")%></li>
                        <li class="list-group-item">Malty Level : <%=rs.getInt("malty")%></li>
                        <li class="list-group-item">Stock : <%=rs.getInt("stock")%> left !</li>
                      </ul>
                      <form role="form" action="cart-add.jsp" method="POST"> 
                        <input type="hidden" name="item_id" value="<%=rs.getInt("id")%>">
                        <input type="hidden" name="item_price" value="<%=rs.getInt("price")%>">
                      <div class="col-sm-12 mt-2">
                        <div class="description-block">
                            <input type="number" class="form-control" name = "qty" placeholder="Insert Quantity Here" max="{{$d->stock}}">
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary mt-3">Add To Cart</button>
                            </div>
                        </div>
                        
                      </div>
                    </form>
                    <div class="col-sm-12">
                        <div class="description-block">
                            <form action="set-favorite.jsp" method="POST">
                                <input type="hidden" name="cluster_id" value="<%=rs.getInt("cluster_id")%>">
                                <button type="submit" class="btn btn-primary mt-3 mb-3">Add As Favorite</button>
                            </form>
                        </div>
                    </div>
                    </div>

            <% } %>
        </div>
            
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>