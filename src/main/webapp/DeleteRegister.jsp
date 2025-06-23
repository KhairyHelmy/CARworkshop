<%-- 
    Document   : DeleteBookingAction
    Created on : 21 Jan 2025
    Author     : ASYIQDANIAL
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CARS</title>
</head>
<body>
    <%
        // Database connection parameters
        // Database connection parameters (from environment variables)
String DB_URL = System.getenv("DB_URL");
String DB_USERNAME = System.getenv("DB_USER");
String DB_PASSWORD = System.getenv("DB_PASSWORD");

        // Get the booking ID from the request parameter
        String id = request.getParameter("id"); // Removed unnecessary space in " id"

        if (id == null || id.trim().isEmpty()) { // Added trim() for safety
            out.println("<script>alert('Error: User ID is required!'); window.location='ManageRegister.jsp';</script>");
            return;
        }

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("DELETE FROM users WHERE id = ?")) {

            stmt.setInt(1, Integer.parseInt(id)); // Safely parsing ID

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<script>alert('Register account deleted successfully!'); window.location='ManageRegister.jsp';</script>");
            } else {
                out.println("<script>alert('Error: Register not found!'); window.location='ManageRegister.jsp';</script>");
            }
        } catch (NumberFormatException e) {
            out.println("<script>alert('Error: Invalid User ID format!'); window.location='ManageRegister.jsp';</script>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='ManageRegister.jsp';</script>");
        }
    %>
</body>
</html>

