<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Register</title>
    <style>
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
        background-color: #0056b3;
        color: white;
    }
        
        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #89cff0;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
         nav {
        background-color: black; /* Set the nav bar color to black */
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
        color: white; /* Ensure links in nav bar are white */
        text-decoration: none;
        padding: 10px;
    }
    ul.nav a:hover {
        color: lightgray; /* Change link color on hover */
    }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
        }
        th {
            background-color: #1100bb;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        form {
            display: inline;
        }
        button {
            background-color: #1100bb;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 3px;
        }
        button:hover {
            background-color: #1100bb;
        }
    </style>
</head>
<body>
     <nav>
        <ul class="nav">
            <li><a href="Homepage.jsp">Home</a></li>
            <li><a href="Booking_Appoiment.jsp">Booking</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li><a href="Inventory.jsp">Maintainance</a></li>
            <li><a href="LogoutServlet">Logout</a></li>
             
        </ul>
    </nav>
    <div class="container">
        <h1>Manage Register</h1>
        <table>
            <thead>
                <tr>
                    <th>Users ID</th>
                    <th>Name</th>
                   
                    <th>Contact Number</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
<%
    // Ambil maklumat dari environment variables
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");
    String query = "SELECT user_id, name, phone, email, role FROM users";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Debug log
        System.out.println("Connecting to DB...");
        System.out.println("DB_URL = " + DB_URL);
        System.out.println("DB_USER = " + DB_USERNAME);
        // Jangan log DB_PASSWORD untuk keselamatan

        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection
        conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

        // Create statement
        stmt = conn.createStatement();

        // Execute query
        rs = stmt.executeQuery(query);

        // Loop through the result set and display the data
        while (rs.next()) {
%>
<!-- HTML/JSP content here, contoh: -->
<tr>
    <td><%= rs.getInt("user_id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("phone") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("role") %></td>
</tr>
<%
        }
    } catch (Exception e) {
        e.printStackTrace(); // Akan tunjuk error di console
%>
    <p style="color:red;">Database connection error: <%= e.getMessage() %></p>
<%
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
