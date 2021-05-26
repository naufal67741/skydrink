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
    <div class="container mt-5">
        <%
            String user_id = session.getAttribute("user_id").toString();
            String query_select_count = "SELECT * FROM carts WHERE user_id = "+user_id;
            ResultSet rs = st.executeQuery(query_select_count);
            int grandTotal = 0;
            while(rs.next()){
                grandTotal += rs.getInt("totalPrice");
            }
        %>
        <h4 class="mb-3">Your Total Price : <%=grandTotal%></h4>
        <h5 class="mb-5">Please input your identity down below !</h5>
            <form role="form" action="submit-checkout.jsp" method="POST">
                <input type="hidden" name="_token" value="{{ csrf_token()}}"/>
                        <input type="hidden" name="_method" value="POST">
                <div class="box-body">
                  <div class="form-group">
                    <label>Address</label>
                    <input type="text" class="form-control" name = "address"placeholder="Enter Address">
                  </div>
                  <div class="form-group">
                    <label>Card Holder Name</label>
                    <input type="text" class="form-control" name = "cardHolderName"placeholder="Enter Card Holder Name">
                  </div>
                  <div class="form-group">
                    <label>CC Number</label>
                    <input type="text" class="form-control" name = "ccNumber"placeholder="ccNumber">
                  </div>
                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
            </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>
<% } %>