
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
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Booking</title>
</head>
<body>

<%
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");

    String bookingId = request.getParameter("booking_id");
    String carOwnerName = "", carPlateNumber = "", phone = "", carModel = "", serviceType = "";

    // Check if it's a POST form submission
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        bookingId = request.getParameter("booking_id");
        carOwnerName = request.getParameter("car_owner_name");
        carPlateNumber = request.getParameter("car_plate_number");
        phone = request.getParameter("contact_number");
        carModel = request.getParameter("car_model");
        serviceType = request.getParameter("service_type");

        // Validate all fields
        if (carOwnerName == null || carOwnerName.trim().isEmpty() ||
            carPlateNumber == null || phone == null || carModel == null || serviceType == null) {
%>
            <script>
                alert("Please fill in all required fields.");
                window.history.back();
            </script>
<%
            return;
        }

        try (
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            PreparedStatement stmt = conn.prepareStatement(
                "UPDATE booking SET car_owner_name=?, car_plate_number=?, phone=?, car_model=?, service_type=? WHERE booking_id=?"
            );
        ) {
            stmt.setString(1, carOwnerName);
            stmt.setString(2, carPlateNumber);
            stmt.setString(3, phone);
            stmt.setString(4, carModel);
            stmt.setString(5, serviceType);
            stmt.setInt(6, Integer.parseInt(bookingId));

            int rows = stmt.executeUpdate();
            if (rows > 0) {
%>
                <script>
                    alert("Booking updated successfully!");
                    window.location.href = "ManageBooking.jsp";
                </script>
<%
            } else {
%>
                <script>
                    alert("Update failed.");
                    window.location.href = "ManageBooking.jsp";
                </script>
<%
            }
            return;
        } catch (Exception e) {
%>
            <script>
                alert("Error: <%= e.getMessage().replace("'", "") %>");
                window.location.href = "ManageBooking.jsp";
            </script>
<%
            return;
        }
    }

    // GET method: fetch data to pre-fill form
    if (bookingId != null) {
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
%>
                <script>
                    alert("Booking not found.");
                    window.location.href = "ManageBooking.jsp";
                </script>
<%
                return;
            }

            rs.close();
        } catch (Exception e) {
%>
            <script>
                alert("Error: <%= e.getMessage().replace("'", "") %>");
                window.location.href = "ManageBooking.jsp";
            </script>
<%
            return;
        }
    } else {
%>
    <script>
        alert("Invalid Booking ID!");
        window.location.href = "ManageBooking.jsp";
    </script>
<%
        return;
    }
%>

<h2>Update Booking</h2>
<form method="post" action="">
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

    <button type="submit">Update Booking</button>
</form>

</body>
</html>
