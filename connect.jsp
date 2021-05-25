<%@ page import="java.sql.*" %>

<%
    final String DB_NAME = "ai_ecommerce";
    String DB_HOST = "localhost"; //localhost
    final String USERNAME = "root"; //root
    final String PASSWORD = ""; //password
    final String DB_PORT = "3306"; //3306
	//localhost: untul lab masih localhost
	//coba: nama database
	//root: prk(username)
	//password: prk(password)
    final String DB_DRIVER = "com.mysql.jdbc.Driver";

    final String DB_CONNECTION_URL =
            String.format("jdbc:mysql://%s:%s/%s", DB_HOST, DB_PORT, DB_NAME);
    
    Class.forName(DB_DRIVER);
	Connection con = DriverManager.getConnection(DB_CONNECTION_URL, USERNAME, PASSWORD);
	Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
%>
