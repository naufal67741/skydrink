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
        if(name.length() == 0 || email.length() == 0 || phone.length() == 0 || password.length() == 0
        || name.equals(" ") || email.equals(" ") || phone.equals(" ") || password.equals(" ")){
                response.sendRedirect("register.jsp?err=Please fill all form");
        }
        else if(!email.contains("@") && !email.contains(".")){
                response.sendRedirect("register.jsp?err=Email must contain '@' and '.'");
        }
        else if(email.startsWith("@") || email.startsWith(".")){
                response.sendRedirect("register.jsp?err=Email cant starts with '@' or '.'");
        }
        else if(email.endsWith("@") || email.endsWith(".")){
                response.sendRedirect("register.jsp?err=Email cant ends with '@' or '.'");
        }
        else if(email.contains("@@") || email.contains("..") || email.contains("@.") || email.contains(".@")){
                response.sendRedirect("register.jsp?err=Email must follows email format");
        }
        else if(isDuplicate!=0){
                response.sendRedirect("register.jsp?err=Email already taken");
        }else{
                st.executeUpdate(query);
                response.sendRedirect("login.jsp");  
        }
%>