<% if(session.getAttribute("user_name") == null){
        response.sendRedirect("login.jsp");
}else { %>
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
    <div class="body-content mt-5">
        <div class="container container-body">
            <%
                
                String user_id = session.getAttribute("user_id").toString();
                String item_id = (String)request.getParameter("item_id");
                String item_price = (String)request.getParameter("item_price");
                String qty = (String)request.getParameter("qty");

                
                // String query_select = "SELECT * FROM carts WHERE user_id="+user_id;
                String query = "SELECT * FROM carts INNER JOIN items ON carts.item_id = items.id WHERE carts.user_id = "+user_id;
                ResultSet rs = st.executeQuery(query);
                if(rs.isBeforeFirst()){ %>
                <%
                  String error = (String) request.getParameter("err");
                  if(error != null){ %>
                    <h1 class="errorStyling"><%= error %></h1>
                <% } %>
                    <table class="table table-dark">
                            <thead>
                                <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Item Name</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Sub total</th>
                                </tr>
                            </thead>
                            <tbody>
                        <%int count = 0;
                        while(rs.next()){ 
                        count++;
                        %>
                                <tr>
                                <th scope="row"><%=count%></th>
                                <td><%=rs.getString("items.name")%></td>
                                <td><%=rs.getInt("qty")%></td>
                                <td>$<%=rs.getInt("totalPrice")%></td>
                                </tr>               
                    <% } %>
                        </tbody>
                        </table>   
                    <div class="col-md-4">
                        <a href="checkout.jsp">
                            <button type="button" class="btn btn-block btn-primary btn-sm">CHECKOUT</button>
                        </a>
                    </div>
                    
                <% } else { %>
                    <h1>You have no item on your cart for now</h1>
                    <p> Please input the item</p>
                <% } %>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>
<% } %>