<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%
   
    
        String email = (String)request.getParameter("email");
        String name = (String)request.getParameter("name");
        String phone = (String)request.getParameter("phone");
        String password = (String)request.getParameter("password");
        int isDuplicate = 0;

        String query = "INSERT INTO `users` (`name`, `email`, `password`, `phone`) VALUES ('"+name+"', '"+email+"', '"+password+"', '"+phone+"')";
        String queryUniqueEmail = "SELECT * FROM users WHERE email = '"+email+"'";

        ResultSet rs = st.executeQuery(queryUniqueEmail);
        if(rs.next()){
                isDuplicate = 1;
        }
        if(name.length() == 0 || email.length() == 0 || phone.length() == 0 || password.length() == 0){
                response.sendRedirect("register.jsp?err=Please fill all form");
        }
        else if(isDuplicate!=0){
                response.sendRedirect("register.jsp?err=Email already taken");
        }else{
                st.executeUpdate(query);
                response.sendRedirect("login.jsp");  
        }
%>