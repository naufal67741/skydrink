<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%

        if(session.getAttribute("user_name") == null){ 
                response.sendRedirect("login.jsp");
        }else{
                String user_id = session.getAttribute("user_id").toString();
                String cluster_id = (String)request.getParameter("cluster_id");        
                
                String query = "UPDATE `users` SET `cluster_id` = '"+cluster_id+"' WHERE `users`.`id` = "+user_id+";";
                st.executeUpdate(query);

                response.sendRedirect("index.jsp");
        }
%>