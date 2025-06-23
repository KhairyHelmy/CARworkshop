<%-- 
    Document   : UpdateInventoryAction
    Created on : 23 Apr 2025, 11:46:26 AM
    Author     : ASYIQDANIAL
--%>

<%@page import="java.math.BigDecimal"%>
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

        // Get parameters from request
        String part_id = request.getParameter("part_id");
        String part_name = request.getParameter("part_name");
        String quantity_in_stock = request.getParameter("quantity_in_stock");
        String supplier_id = request.getParameter("supplier_id");
        String price = request.getParameter("price");
        String part_type = request.getParameter("part_type");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(
                 "UPDATE spare_parts SET part_name = ?, quantity_in_stock = ?, supplier_id = ?, price = ?, part_type = ? WHERE part_id = ?")) {

            stmt.setString(1, part_name);
            stmt.setInt(2, Integer.parseInt(quantity_in_stock));
            stmt.setInt(3, Integer.parseInt(supplier_id));
            stmt.setBigDecimal(4, new BigDecimal(price));
            stmt.setString(5, part_type);
            stmt.setInt(6, Integer.parseInt(part_id));

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<script>alert('Part updated successfully!'); window.location='Manage_Inventory.jsp';</script>");
            } else {
                out.println("<script>alert('Error: Part not found!'); window.location='Manage_Inventory.jsp';</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error: " + e.getMessage().replace("'", "\\'") + "'); window.location='Manage_Inventory.jsp';</script>");
        }
    %>
</body>
</html>
