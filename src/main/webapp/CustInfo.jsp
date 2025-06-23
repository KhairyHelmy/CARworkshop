<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Booking List</title>
    <style>
        table {
            width: 70%;
            border-collapse: collapse;
            margin: 30px auto;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Customer Booking List</h2>

    <%
        String DB_URL = System.getenv("DB_URL");
            String DB_USERNAME = System.getenv("DB_USER");
            String DB_PASSWORD = System.getenv("DB_PASSWORD");

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 8+ driver
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            String query = "SELECT u.name, u.phone, b.car_plate_num " +
                           "FROM Users u " +
                           "JOIN Booking b ON u.user_id = b.customer_id " +
                           "WHERE u.role = 'customer'";

            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
    %>

    <table>
        <tr>
            <th>Customer Name</th>
            <th>Phone Number</th>
            <th>Car Plate Number</th>
        </tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("phone") %></td>
            <td><%= rs.getString("car_plate_num") %></td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        } catch (Exception e) {
            out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception ignored) {}
            try { if (stmt != null) stmt.close(); } catch (Exception ignored) {}
            try { if (conn != null) conn.close(); } catch (Exception ignored) {}
        }
    %>
</body>
</html>
