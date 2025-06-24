<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");

    String bookingId = request.getParameter("booking_id");
    String carOwnerName = "", carPlateNumber = "", phone = "", carModel = "", serviceType = "";

    // Handle GET: retrieve data from DB
    if ("GET".equalsIgnoreCase(request.getMethod()) && bookingId != null) {
        try (
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM booking WHERE booking_id = ?");
        ) {
            stmt.setInt(1, Integer.parseInt(bookingId));
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                carOwnerName = rs.getString("car_owner_name");
                carPlateNumber = rs.getString("car_plate_number");
                phone = rs.getString("phone");
                carModel = rs.getString("car_model");
                serviceType = rs.getString("service_type");
            } else {
                out.println("<script>alert('Booking not found!'); window.location='ManageBooking.jsp';</script>");
                return;
            }
        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage().replace("'", "") + "'); window.location='ManageBooking.jsp';</script>");
            return;
        }
    }

    // Handle POST: update the booking
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        bookingId = request.getParameter("booking_id");
        carOwnerName = request.getParameter("car_owner_name");
        carPlateNumber = request.getParameter("car_plate_number");
        phone = request.getParameter("contact_number");
        carModel = request.getParameter("car_model");
        serviceType = request.getParameter("service_type");

        try (
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            PreparedStatement stmt = conn.prepareStatement(
                "UPDATE booking SET car_owner_name=?, car_plate_number=?, phone=?, car_model=?, service_type=? WHERE booking_id=?");
        ) {
            stmt.setString(1, carOwnerName);
            stmt.setString(2, carPlateNumber);
            stmt.setString(3, phone);
            stmt.setString(4, carModel);
            stmt.setString(5, serviceType);
            stmt.setInt(6, Integer.parseInt(bookingId));

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                out.println("<script>alert('Booking updated successfully!'); window.location='ManageBooking.jsp';</script>");
            } else {
                out.println("<script>alert('Update failed.'); window.location='ManageBooking.jsp';</script>");
            }
            return;
        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage().replace("'", "") + "'); window.location='ManageBooking.jsp';</script>");
            return;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
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
            <li><a href="LogoutServlet">Logout</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Update Booking</h1>
        <form method="post" action="">
            <input type="hidden" name="booking_id" value="<%= bookingId %>">

            <label>Car Owner Name:</label>
            <input type="text" name="car_owner_name" value="<%= carOwnerName %>" required>

            <label>Car Plate Number:</label>
            <input type="text" name="car_plate_number" value="<%= carPlateNumber %>" required>

            <label>Phone:</label>
            <input type="text" name="contact_number" value="<%= phone %>" required>

            <label>Car Model:</label>
            <input type="text" name="car_model" value="<%= carModel %>" required>

            <label>Service Type:</label>
            <input type="text" name="service_type" value="<%= serviceType %>" required>

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
