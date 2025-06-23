<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
<%
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");

    String bookingId = request.getParameter("booking_id");
    String carOwnerName = "", carPlateNumber = "", phone = "", carModel = "", serviceType = "";

    if (bookingId != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "SELECT * FROM booking WHERE booking_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, Integer.parseInt(bookingId));
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                carOwnerName = rs.getString("car_owner_name");
                carPlateNumber = rs.getString("car_plate_number");
                phone = rs.getString("phone");
                carModel = rs.getString("car_model");
                serviceType = rs.getString("service_type");
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    } else {
        response.sendRedirect("ManageBooking.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
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
