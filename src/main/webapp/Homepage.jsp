<%-- 
    Document   : Homepage
    Created on : 1 Jan 2025, 8:02:51 PM
    Author     : ASYIQDANIAL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("StartLogin.jsp");
        return;
    }

    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Workshop Management System</title>
    
    
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
    h2 {
        text-align: left;
        padding: 30px;
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
   footer {
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #1100bb;
            color: black;
            padding: 20px 0;
        }
        footer a {
            color: #1100bb;
            text-decoration: none;
        }
        footer a:hover {
            color: #1100bb;
        }
    .container {
        display: grid;
        grid-template-columns: repeat(4, 150px);
        grid-row-gap: 20px;
        grid-column-gap: 60px;
        background: rgba(246, 244, 244, 0.5);
        padding: 20px;
        border-radius: 10px;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container a {
        display: block;
        width: 100%;
        height: 100px;
        background: white;
        border-radius: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
        text-decoration: none;
        color: rgb(16, 16, 16);
        font-weight: bold;
        font-size: 17.5px;
        transition: transform 0.3s;
    }
    .container a:hover {
        transform: scale(1.1);
    }
</style>

</head>
 
<body>
    
    
    <div class="welcome">
        <h1>Car Workshop Management System</h1>
        
    </div>

    <nav>
        <ul class="nav">
           
            <li><a href="Booking_Appoiment.jsp">Booking</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li><a href="MaintainanceCar.jsp">Maintainance</a></li>
            <li><a href="LogoutServlet">Logout</a></li>
            <li><a href="Register.jsp">RegisterUsers</a></li>
        </ul>
    </nav>

    <div class="container">
        <% 
            String[] links = { "Contact.jsp", "Booking_Appoiment.jsp","ManageBooking.jsp","ManageRegister.jsp", "MaintainanceCar.jsp","PaymentBill.jsp","Inventory_Sparepart.jsp"};
            String[] labels = { "Contact", "Booking","ManageBooking","ManageRegister","Maintainance", "payment","Inventory"};
            for(int i = 0; i < links.length; i++) {
        %>
            <a href="<%= links[i] %>"><%= labels[i] %></a>
        <% } %>
    </div>
<%
    String loginSuccess = (String) session.getAttribute("loginSuccess");
    if (loginSuccess != null) {
%>
    <script>
        alert("<%= loginSuccess %>");
    </script>
<%
        session.removeAttribute("loginSuccess"); // buang supaya tak muncul lagi next time
    }
%>

    <hr>

     <footer>
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5>Contact Information</h5>
                    <ul class="list-unstyled">
                        <li>Johor Bahru</li>
                        <li>+60 11-1292 1291</li>
                        <li>Alangtyre@gmail.com</li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5>Follow Us</h5>
                    <a href="https://www.facebook.com/" target="_blank">Facebook</a><br>
                    <a href="https://www.tiktok.com/" target="_blank">TikTok</a><br>
                    <a href="https://www.instagram.com/" target="_blank">Instagram</a>
                </div>
                <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
                    <h5>About Us</h5>
                    <p>© 2024 Car Workshop Management System. All rights reserved.</p>
                </div>
            </div>
        </div>
        <div class="text-center p-3">
            © 2024 Car Workshop Management System
        </div>
    </footer>
</body>
</html>