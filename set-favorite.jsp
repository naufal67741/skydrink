<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%
        String user_id = session.getAttribute("user_id").toString();
        String cluster_id = (String)request.getParameter("cluster_id");        
        
        String query = "UPDATE `users` SET `cluster_id` = '"+cluster_id+"' WHERE `users`.`id` = "+user_id+";";
        st.executeUpdate(query);

        response.sendRedirect("index.jsp");
%>