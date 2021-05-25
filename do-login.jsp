<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String checkLogin = request.getParameter("checkLogin");
    int user_id = 0;
    String query = "SELECT * FROM users WHERE email = '"+email+"' AND password = '"+password+"'";
    
    ResultSet rs = st.executeQuery(query);
    int isFound = 0;
    
    if(rs.next()){
        session.setAttribute("user_id", rs.getInt("id"));
        session.setAttribute("user_name", rs.getString("name"));
        user_id = rs.getInt("id");
        isFound = 1;
    }
    rs.close();
    if(email.length() == 0 || password.length() == 0){
        response.sendRedirect("login.jsp?err=Email or password cant be empty");
    }
    else if(isFound == 0){
        response.sendRedirect("login.jsp?err=Email or password Wrong");
    }else{
        if(checkLogin != null){
            Cookie user_id_cookie = new Cookie("user_id", Integer.toString(user_id));
            user_id_cookie.setMaxAge(604800);
            response.addCookie(user_id_cookie);
        }
        response.sendRedirect("index.jsp");
    }
%>