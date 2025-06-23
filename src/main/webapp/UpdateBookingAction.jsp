<%-- 
    Document   : UpdateBookingAction
    Created on : 21 Jan 2025, 3:52:54 PM
    Author     : ASYIQDANIAL
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Booking Result</title>
</head>
    <style>
       body {
    
    background-size: cover;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    color: black;
}

.welcome {
    background: url('honeycomb.jpg') no-repeat center center fixed;
    text-align: center;
    padding: 30px;
    background-color: #1100bb;
    color: white;
}

nav {
    background-color: black;
    padding: 10px;
}

ul.nav {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
}

ul.nav li {
    margin-right: 20px;
}

ul.nav a {
    color: white;
    text-decoration: none;
    padding: 10px;
}

ul.nav a:hover {
    color: lightgray;
}

footer {
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: #1100bb;
    color: black;
    padding: 20px 0;
}

footer a {
    color: black;
    text-decoration: none;
}

footer a:hover {
    color: gray;
}

.container {
    width: 50%;
    margin: 50px auto;
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-top: 10px;
    font-weight: bold;
}

input, select, button {
    margin-top: 5px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #0056b3;
    color: white;
    border: none;
    cursor: pointer;
    margin-top: 20px;
}

button:hover {
    background-color: #004090;
}

.note-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 90%;
}

.note-form label {
    margin: 5px 0;
    font-weight: bold;
}

.note-form input {
    margin: 5px 0;
    padding: 10px;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.note-form button {
    margin-top: 10px;
    padding: 10px 20px;
    background-color: #1100bb;
    color: black;
    border: none;
    cursor: pointer;
    border-radius: 3px;
    width: 90%;
}

.note-form button:hover {
    background-color: #0056b3;
    color: white;
}

.note-form a {
    display: inline-block;
    margin-top: 10px;
    color: #0f9c8e;
    text-decoration: none;
}
</style>
<body>
    <div class="welcome">
        <h1>Car Workshop Management System</h1>
    </div>

    <nav>
        <ul class="nav">
            <li><a href="Homepage.jsp">Home</a></li>
            <li><a href="Booking_Appoiment.jsp">Booking</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li><a href="Inventory.jsp">Maintenance</a></li>
            <li><a href="StartLogin.jsp">Logout</a></li>
        </ul>
    </nav>
    <%
        // Database connection parameters
        String DB_URL = "jdbc:mysql://localhost:3306/workshopdb";
        String DB_USERNAME = "root";
        String DB_PASSWORD = "";

        String bookingId = request.getParameter("booking_id");
        String carOwnerName = request.getParameter("car_owner_name");
        String carPlateNumber = request.getParameter("car_plate_number");
        String phone = request.getParameter("phone");
        String carModel = request.getParameter("car_model");
        String serviceType = request.getParameter("service_type");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(
                 "UPDATE bookings SET car_owner_name = ?, car_plate_number = ?, phone = ?, car_model = ?, service_type = ? WHERE booking_id = ?")) {

            stmt.setString(1, carOwnerName);
            stmt.setString(2, carPlateNumber);
            stmt.setString(3, phone);
            stmt.setString(4, carModel);
            stmt.setString(5, serviceType);
            stmt.setInt(6, Integer.parseInt(bookingId));

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<script>alert('Booking updated successfully!'); window.location='ManageBooking.jsp';</script>");
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
