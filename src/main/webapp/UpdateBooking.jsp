<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    String bookingId = request.getParameter("booking_id");
    if (bookingId == null) {
        out.println("<p style='color:red;'>Invalid booking ID!</p>");
        return;
    }

    String carOwnerName = "";
    String carPlateNumber = "";
    String phone = "";
    String carModel = "";
    String serviceType = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

        String query = "SELECT * FROM booking WHERE booking_id = ?";
        stmt = conn.prepareStatement(query);
        stmt.setInt(1, Integer.parseInt(bookingId));
        rs = stmt.executeQuery();

        if (rs.next()) {
            carOwnerName = rs.getString("car_owner_name");
            carPlateNumber = rs.getString("car_plate_number");
            phone = rs.getString("phone");
            carModel = rs.getString("car_model");
            serviceType = rs.getString("service_type");
        } else {
            out.println("<p style='color:red;'>Booking not found!</p>");
            return;
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p style='color:red;'>Database error: " + e.getMessage() + "</p>");
        return;
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Booking</title>
</head>
<body>
    <h1>Update Booking</h1>
    <form action="UpdateBookingAction.jsp" method="post">
        <input type="hidden" name="booking_id" value="<%= bookingId %>">

        <label>Car Owner Name:</label>
        <input type="text" name="car_owner_name" value="<%= carOwnerName %>" required><br>

        <label>Car Plate Number:</label>
        <input type="text" name="car_plate_number" value="<%= carPlateNumber %>" required><br>

        <label>Phone:</label>
        <input type="text" name="contact_number" value="<%= phone %>" required><br>

        <label>Car Model:</label>
        <input type="text" name="car_model" value="<%= carModel %>" required><br>

        <label>Service Type:</label>
        <input type="text" name="service_type" value="<%= serviceType %>" required><br>

        <button type="submit">Update</button>
    </form>
</body>
</html>
