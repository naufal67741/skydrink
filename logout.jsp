<%

        session.setAttribute("user_id", null);
        session.setAttribute("user_name", null);

        session.invalidate();

        response.sendRedirect("index.jsp");

%>