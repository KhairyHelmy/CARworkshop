<%-- 
    Document   : Homepage
    Created on : 1 Jan 2025, 8:02:51 PM
    Author     : ASYIQDANIAL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        color: #e7e1e1;
    }
    .welcome {
        background: url('honeycomb.jpg') no-repeat center center fixed;
        text-align: center;
        padding: 30px;
        background-color: #0f9c8e;
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
    grid-gap: 60px;
    background: rgba(246, 244, 244, 0.5);
    padding: 20px;
    border-radius: 10px;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    height: auto;  /* Adjust the height to auto if content varies */
}

.container a {
    display: block;
    width: 100%;
    height: 100px;
    background: white;
    border-radius: 10px;
    display: flex;
    justify-content: center ;
    align-items: center;
    text-decoration: none;
    color: rgb(16, 16, 16);
    font-weight: bold;
    font-size: 14px;
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



    <div class="container">
        <% 
            String[] links = {"AdminLogin.jsp", "CustomerLoginPage.jsp"};
            String[] labels = {"Staff", "Customer"};
            for(int i = 0; i < links.length; i++) {
        %>
            <a href="<%= links[i] %>"><%= labels[i] %></a>
        <% } %>
    </div>

    <hr>

   
</body>
</html>