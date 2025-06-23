<%-- 
    Document   : DeleteInventory
    Created on : 23 Apr 2025, 11:56:26 AM
    Author     : ASYIQDANIAL
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Delete Inventory Result</title>
    </head>
    <body>
        <%
            // Database connection parameters
            String DB_URL = "jdbc:mysql://localhost:3306/workshopdb";
            String DB_USERNAME = "root";
            String DB_PASSWORD = "";

            String partIdParam = request.getParameter("part_id");

            if (partIdParam == null || partIdParam.isEmpty()) {
                out.println("<script>alert('Error: part ID is required!'); window.location='Manage_Inventory.jsp';</script>");
                return;
            }

            int part_id = 0;
            try {
                part_id = Integer.parseInt(partIdParam);
            } catch (NumberFormatException e) {
                out.println("<script>alert('Error: Invalid part ID format!'); window.location='Manage_Inventory.jsp';</script>");
                return;
            }

            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD); PreparedStatement stmt = conn.prepareStatement("DELETE FROM spare_part WHERE part_id = ?")) {

                stmt.setInt(1, part_id);
                int rowsDeleted = stmt.executeUpdate();

                if (rowsDeleted > 0) {
                    out.println("<script>alert('Inventory deleted successfully!'); window.location='Manage_Inventory.jsp';</script>");
                } else {
                    out.println("<script>alert('Error: sparepart ID not found!'); window.location='Manage_Inventory.jsp';</script>");
                }

            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<script>alert('Error: " + e.getMessage().replace("'", "\\'") + "'); window.location='Manage_Inventory.jsp';</script>");
            }
        %>
    </body>
</html>
