<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Resit Servis</title>
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

 
  
        .receipt-box {
            background: white;
            padding: 20px;
            border-radius: 10px;
            width: 500px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        p {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="receipt-box">
        <h2>Resit Servis Kereta</h2>
        

        <%
            String id = request.getParameter("id");
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshopdb", "root", "");
                String query = "SELECT * FROM receipts WHERE id=?";
                ps = conn.prepareStatement(query);
                ps.setString(1, id);
                rs = ps.executeQuery();

                if (rs.next()) {
        %>
                    <p><strong>No Plat:</strong> <%= rs.getString("plate_number") %></p>
                    <p><strong>Jenis Servis:</strong> <%= rs.getString("service_type") %></p>
                    <p><strong>Jenis Kereta:</strong> <%= rs.getString("car_type") %></p>
                    <p><strong>Jumlah Bayaran:</strong> RM <%= rs.getString("amount") %></p>
                    <p><strong>Tarikh:</strong> <%= rs.getTimestamp("receipt_date") %></p>
                    <hr>
                    <p><%= rs.getString("receipt_text").replaceAll("\n", "<br>") %></p>
                    
                    <%
                        // Retrieve phone number and receipt text for WhatsApp link
                        String phone = rs.getString("phone_number");
                        String text = rs.getString("receipt_text");
                        String encodedText = java.net.URLEncoder.encode(text, "UTF-8");
                        String whatsappLink = "https://wa.me/" + phone + "?text=" + encodedText;
                    %>

                    <br>
                    <div style="text-align: center;">
                        <a href="<%= whatsappLink %>" target="_blank" 
                           style="background: #25D366; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">
                           📤 Hantar ke WhatsApp
                        </a>
                    </div>

                <%
                } else {
                %>
                    <p>Resit tidak dijumpai.</p>
                <%
                }
            } catch (Exception e) {
                out.println("Ralat: " + e.getMessage());
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                } catch (SQLException se) {
                    out.println("Database close error: " + se.getMessage());
                }
            }
        %>
    </div>
</body>
</html>
