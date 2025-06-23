<%-- 
    Document   : EditMaintenance
    Created on : 12 Jun 2025, 5:33:39 PM
    Author     : ASYIQDANIAL
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Maintenance Record</title>
    <style>
        body {
            background: #f5f5f5;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
        }
        form label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        form input, form select, form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit Maintenance Record</h2>

    <%
        int id = Integer.parseInt(request.getParameter("id"));
        String plateNumber = "", carType = "", damage = "", repairStatus = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshopdb", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM maintenance_records WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                plateNumber = rs.getString("plate_number");
                carType = rs.getString("car_type");
                damage = rs.getString("damage_description");
                repairStatus = rs.getString("repair_status");
            }

            conn.close();
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error loading record.</p>");
        }
    %>

    <form action="UpdateMaintenanceServlet" method="post">
        <input type="hidden" name="id" value="<%= id %>">

        <label>Plate Number</label>
        <input type="text" name="plateNumber" value="<%= plateNumber %>" required>

        <label>Car Type</label>
        <select name="carType" required>
            <option value="4x4" <%= carType.equals("4x4") ? "selected" : "" %>>4x4</option>
            <option value="Sedan" <%= carType.equals("Sedan") ? "selected" : "" %>>Sedan</option>
        </select>

        <label>Damage Description</label>
        <textarea name="damage" rows="4" required><%= damage %></textarea>

        <label>Repair Status</label>
        <select name="repairStatus" required>
            <option value="Pending" <%= repairStatus.equals("Pending ") ? "selected" : "" %>>Pending</option>
            <option value="Repairing" <%= repairStatus.equals("Repairing Car") ? "selected" : "" %>>Repairing</option>
            <option value="Completed" <%= repairStatus.equals("Completed") ? "selected" : "" %>>Completed</option>
        </select>

        <button type="submit">Update Record</button>
    </form>
</div>

</body>
</html>
