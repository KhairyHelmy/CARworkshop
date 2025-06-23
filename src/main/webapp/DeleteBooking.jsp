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
    <title>Delete Booking Result</title>
</head>
<body>
    <%
        // Database connection parameters
        String DB_URL = "jdbc:mysql://localhost:3306/workshopdb";
        String DB_USERNAME = "root";
        String DB_PASSWORD = "";

        // Get the booking ID from the request parameter
        String bookingId = request.getParameter("booking_id");

        if (bookingId == null || bookingId.isEmpty()) {
            out.println("<script>alert('Error: Booking ID is required!'); window.location='ManageBooking.jsp';</script>");
            return;
        }

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement("DELETE FROM bookings WHERE booking_id = ?")) {

            stmt.setInt(1, Integer.parseInt(bookingId));

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<script>alert('Booking deleted successfully!'); window.location='ManageBooking.jsp';</script>");
            } else {
                out.println("<script>alert('Error: Booking not found!'); window.location='ManageBooking.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='ManageBooking.jsp';</script>");
        }
    %>
</body>
</html>
