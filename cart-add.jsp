<%@ include file = "/connect.jsp" %>
<%@ page import="java.sql.*" %>

<%
        
        if(session.getAttribute("user_name") == null){ 
                response.sendRedirect("login.jsp");
        }else{
        String user_id = session.getAttribute("user_id").toString();
        String item_id = (String)request.getParameter("item_id");
        String item_price = (String)request.getParameter("item_price");
        String qty = (String)request.getParameter("qty");

        if(qty.length() == 0){
            response.sendRedirect("index.jsp?err=please input qty");
        }else{
            int item_price_int = Integer.parseInt(item_price);
            int qty_int = Integer.parseInt(qty);
            int totalPrice = item_price_int * qty_int;
            int currentStock = 0;
            String query_select = "SELECT * FROM items WHERE id="+item_id;
            ResultSet rs = st.executeQuery(query_select);
            if(rs.next()){
                currentStock = rs.getInt("stock");
                currentStock--;
            }

            String query_insert = "INSERT INTO `carts` (`qty`, `totalPrice`, `user_id`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES ('"+qty+"' , '"+totalPrice+"', '"+user_id+"', '"+item_id+"', NULL, NULL, NULL);";
            st.executeUpdate(query_insert);

            String query_update = "UPDATE `items` SET `stock` = '"+currentStock+"' WHERE `items`.`id` = "+item_id+";";
            st.executeUpdate(query_update);

            response.sendRedirect("index.jsp");
        }
    }
%>