<%@page import="com.util.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Maintenance Records</title>
    <style>
        body {
            background: #f5f5f5;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #000;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .container {
            margin: 50px auto;
            width: 90%;
            max-width: 1000px;
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
        }
        th {
            background-color: #333;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .success, .error {
            text-align: center;
            margin-bottom: 15px;
            padding: 10px;
            font-weight: bold;
        }
        .success {
            color: green;
        }
        .error {
            color: red;
        }
                body {
            background: url('gtr.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
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
            display: block;
            width: 80%;
            max-width: 800px;
            margin: 70px auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
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
        .note-form input,
        .note-form select,
        .note-form textarea {
            margin: 5px 0;
            padding: 10px;
            width: 100%;
            border: 1px solid black;
            border-radius: 3px;
            font-weight: bold;
        }
        .note-form button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 3px;
            width: 100%;
            font-weight: bold;
        }
        .note-form button:hover {
            background-color: #0056b3;
            color: white;
        }
    </style>
</head>
<body>
    
    <nav>
    <ul class="nav">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="booking.jsp">Booking</a></li>
        <li><a href="ViewMaintenance.jsp">Progress</a></li>
        
    </ul>
</nav>

<div class="header">
    <h2>Maintenance Records</h2>
</div>

<div class="container">

    <%-- Display message if redirected with success or error --%>
    <%
        String success = request.getParameter("success");
        String error = request.getParameter("error");
        if ("1".equals(success)) {
    %>
        <div class="success">Maintenance record submitted successfully!</div>
    <% } else if ("1".equals(error)) { %>
        <div class="error">Failed to submit maintenance record. Please try again.</div>
    <% } %>

    <table>
        <tr>
            <th>ID</th>
            <th>Plate Number</th>
            <th>Car Type</th>
            <th>Damage Description</th>
            <th>Repair Status</th>
            <th>Created At</th>
        </tr>
        <%
    try {
        Connection conn = DBConnection.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM maintenance_records ORDER BY created_at DESC");

        while (rs.next()) {
%>
      <tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("plate_number") %></td>
    <td><%= rs.getString("car_type") %></td>
    <td><%= rs.getString("damage_description") %></td>
    <td><%= rs.getString("repair_status") %></td>
    <td><%= rs.getTimestamp("created_at") %></td>
    <td>
        <a href="EditMaintenance.jsp?id=<%= rs.getInt("id") %>">Edit</a>
    </td>
</tr>

        <%
                }
                conn.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='6' style='color:red;'>Error loading data.</td></tr>");
                e.printStackTrace();
            }
        %>
    </table>
</div>

</body>
</html>
