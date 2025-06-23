<%-- 
    Document   : CustomerInfo
    Created on : 12 Jun 2025, 11:43:18 AM
    Author     : ASYIQDANIAL
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.security.MessageDigest" %>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .action-btns {
            display: flex;
            gap: 5px;
        }
        .btn {
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-edit {
            background-color: #2196F3;
            color: white;
        }
        .btn-delete {
            background-color: #f44336;
            color: white;
        }
        .search-container {
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
        }
        .search-box {
            padding: 8px;
            width: 300px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        .add-btn {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Customer Management</h2>
        
        <div class="search-container">
            <input type="text" class="search-box" placeholder="Search customers..." id="searchInput" onkeyup="searchTable()">
            <a href="add_customer.jsp" class="add-btn">Add New Customer</a>
        </div>
        
        <table id="customerTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>License Plate</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    
                    try {
                        // Load JDBC driver (adjust for your database)
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        
                        // Database connection - UPDATE THESE VALUES
                        String dbUrl = "jdbc:mysql://localhost:3306/your_database";
                        String dbUser = "your_username";
                        String dbPass = "your_password";
                        
                        conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
                        
                        // SQL query with LEFT JOIN for license plates (assuming a Vehicles table)
                        String sql = "SELECT c.cust_id, c.name, c.phone, c.email, v.license_plate " +
                                     "FROM Customers c " +
                                     "LEFT JOIN Vehicles v ON c.cust_id = v.cust_id " +
                                     "ORDER BY c.name";
                        
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();
                        
                        while (rs.next()) {
                            int id = rs.getInt("cust_id");
                            String name = rs.getString("name");
                            String phone = rs.getString("phone");
                            String email = rs.getString("email");
                            String licensePlate = rs.getString("license_plate");
                            if (licensePlate == null) licensePlate = "N/A";
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= name %></td>
                    <td><%= phone %></td>
                    <td><%= email %></td>
                    <td><%= licensePlate %></td>
                    <td class="action-btns">
                        <button class="btn btn-edit" onclick="editCustomer(<%= id %>)">Edit</button>
                        <button class="btn btn-delete" onclick="deleteCustomer(<%= id %>)">Delete</button>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                    }
                %>
            </tbody>
        </table>
    </div>

    <script>
        function searchTable() {
            const input = document.getElementById("searchInput");
            const filter = input.value.toUpperCase();
            const table = document.getElementById("customerTable");
            const tr = table.getElementsByTagName("tr");
            
            for (let i = 1; i < tr.length; i++) {
                let found = false;
                const td = tr[i].getElementsByTagName("td");
                
                for (let j = 0; j < td.length - 1; j++) { // Skip actions column
                    if (td[j]) {
                        const txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            found = true;
                            break;
                        }
                    }
                }
                
                tr[i].style.display = found ? "" : "none";
            }
        }
        
        function editCustomer(id) {
            window.location.href = "edit_customer.jsp?id=" + id;
        }
        
        function deleteCustomer(id) {
            if (confirm("Are you sure you want to delete this customer?")) {
                window.location.href = "delete_customer.jsp?id=" + id;
            }
        }
    </script>
</body>
</html>
