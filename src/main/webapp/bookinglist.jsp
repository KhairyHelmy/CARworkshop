<%-- 
    Document   : updatebooking
    Created on : 20 Jan 2025, 11:29:17 PM
    Author     : ASYIQDANIAL
--%>

<%@page import="com.util.DBConnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Service Data</title>
</head>
<body>

    <h1>Car Service Data</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Car Owner Name</th>
                <th>Car Plate Number</th>
                <th>Contact Number</th>
                <th>Car Model</th>
                <th>Service Type</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Database credentials (replace with your actual credentials)
                String url = "jdbc:mysql://localhost:3306/workshopdb"; 
                String user = "root";
                String password = "";

                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver"); 

                    // Establish connection
                    Connection connection = DBConnection.getConnection();

                    // Create statement
                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM bookings");

                    // Execute query
                    ResultSet resultSet = statement.executeQuery();

                    // Iterate through results
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String carOwnerName = resultSet.getString("carOwnerName");
                        String carPlateNumber = resultSet.getString("carPlateNumber");
                        String contactNumber = resultSet.getString("contactNumber");
                        String carModel = resultSet.getString("carModel");
                        String serviceType = resultSet.getString("serviceType");
            %>
                        <tr>
                            <td><%= id %></td>
                            <td><%= carOwnerName %></td>
                            <td><%= carPlateNumber %></td>
                            <td><%= contactNumber %></td>
                            <td><%= carModel %></td>
                            <td><%= serviceType %></td>
                        </tr>
            <%
                    }

                    // Close resources
                    resultSet.close();
                    statement.close();
                    connection.close();

                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace(); 
                }
            %>
        </tbody>
    </table>

</body>
</html>