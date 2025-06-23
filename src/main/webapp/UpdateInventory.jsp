<%-- 
    Document   : UpdateInventory
    Created on : 23 Apr 2025, 11:38:22 AM
    Author     : ASYIQDANIAL
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Inventory</title>
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
        <h1>Update Inventory</h1>
        <%
            // Database connection parameters
            String DB_URL = "jdbc:mysql://localhost:3306/workshopdb";
            String DB_USERNAME = "root";
            String DB_PASSWORD = "";
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            String part_id = request.getParameter("part_id");
            if (part_id == null) {
                out.println("<p>Invalid sparepart ID!</p>");
                return;
            }

            String part_name = "";
            String quantity_in_stock = "";
            String supplier_id = "";
            String price = "";
            String part_type = "";

            try {
                // Load MySQL JDBC Driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                // Establish connection
                conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

                // Fetch booking details
                String query = "SELECT * FROM spare_parts WHERE part_id = ?";
                    stmt = conn.prepareStatement(query);
                    stmt.setInt(1, Integer.parseInt(part_id));
                    rs = stmt.executeQuery();


                if (rs.next()) {
                    part_name = rs.getString("part_name");
                    quantity_in_stock = rs.getString("quantity_in_stock");
                    supplier_id = rs.getString("supplier_id");
                    price = rs.getString("price");
                    part_type = rs.getString("part_type");
                } else {
                    out.println("<p>Sparepart not found!</p>");
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
        <form action="UpdateInventoryAction.jsp" method="post">
            <input type="hidden" name="part_id" value="<%= part_id %>">

            <label for="part_name">sparepart name</label>
            <input type="text" id="part_name" name="part_name" value="<%= part_name %>" required>

            <label for="quantity_in_stock">quantity_in_stock</label>
            <input type="text" id="quantity_in_stock" name="quantity_in_stock" value="<%= quantity_in_stock %>" required>

            <label for="supplier_id">supplier_id</label>
            <input type="text" id="supplier_id" name="supplier_id" value="<%= supplier_id %>" required>

            <label for="price">price Model</label>
            <input type="text" id="price" name="price" value="<%= price %>" required>

            <label for="part_type">part Type</label>
            <input type="text" id="part_type" name="part_type" value="<%= part_type %>" required>

            <button type="submit">Update Inventory</button>
        </form>
    </div>
</body>
</html>
