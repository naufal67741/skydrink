<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%
   
    
        String address = (String)request.getParameter("address");
        String cardHolderName = (String)request.getParameter("cardHolderName");
        String ccNumber = (String)request.getParameter("ccNumber");
        String user_id = session.getAttribute("user_id").toString();
        if(address.length() == 0 || cardHolderName.length() == 0 || ccNumber.length() == 0){
            response.sendRedirect("checkout.jsp?err=Please fill all form");
        }else{
            String query_delete = "DELETE FROM `carts` WHERE `user_id` ="+user_id;
            st.executeUpdate(query_delete);
            response.sendRedirect("index.jsp"); 
        }
%>