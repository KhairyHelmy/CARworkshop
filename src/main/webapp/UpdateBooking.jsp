<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Booking</title>
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
    width: 100%;
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
    width: 100%;
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
</head>
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
    <div class="container">
        <h1>Update Booking</h1>
        <%
            // Database connection parameters
            String DB_URL = "jdbc:mysql://localhost:3306/workshopdb";
            String DB_USERNAME = "root";
            String DB_PASSWORD = "";
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            String bookingId = request.getParameter("booking_id");
            if (bookingId == null) {
                out.println("<p>Invalid booking ID!</p>");
                return;
            }

            String carOwnerName = "";
            String carPlateNumber = "";
            String phone = "";
            String carModel = "";
            String serviceType = "";

            try {
                // Load MySQL JDBC Driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                // Establish connection
                conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

                // Fetch booking details
                String query = "SELECT * FROM bookings WHERE booking_id = ?";
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
                    out.println("<p>Booking not found!</p>");
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
            }
        %>
        <form action="UpdateBookingAction.jsp" method="post">
            <input type="hidden" name="booking_id" value="<%= bookingId %>">

            <label for="car_owner_name">Car Owner Name</label>
            <input type="text" id="car_owner_name" name="car_owner_name" value="<%= carOwnerName %>" required>

            <label for="car_plate_number">Car Plate Number</label>
            <input type="text" id="car_plate_number" name="car_plate_number" value="<%= carPlateNumber %>" required>

            <label for="phone">phone</label>
            <input type="text" id="contact_number" name="contact_number" value="<%= phone %>" required>

            <label for="car_model">Car Model</label>
            <input type="text" id="car_model" name="car_model" value="<%= carModel %>" required>

            <label for="service_type">Service Type</label>
            <input type="text" id="service_type" name="service_type" value="<%= serviceType %>" required>

            <button type="submit">Update Booking</button>
        </form>
    </div>
</body>
</html>
