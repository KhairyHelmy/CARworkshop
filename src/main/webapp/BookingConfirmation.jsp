<%-- 
    Document   : Booking_Appoiment
    Created on : 25 Dec 2024, 10:44:10 PM
    Author     : ASYIQDANIAL
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Workshop Management System</title>
    <style>
        body {
             
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
        .styled-button {
        display: inline-block;
        padding: 12px 24px;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        background-color: black;  /* Green color */
        color: white;
        border-radius: 8px;
        transition: background-color 0.3s, transform 0.2s;
    }

    .styled-button:hover {
        background-color: #45a049;  /* Darker green on hover */
        transform: translateY(-2px);  /* Button lift effect */
    }

    .styled-button:active {
        background-color: #3e8e41;  /* Even darker green when clicked */
        transform: translateY(0);  /* Reset lift effect */
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
            <li><a href="LogoutServlet">Logout</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Booking Confirmation</h1>
        <div class="details">
            <label>Car Owner Name:</label>
            <p><%= (String)request.getAttribute("carOwnerName") %></p>
            <label>Car Plate Number:</label>
            <p><%= (String)request.getAttribute("carPlateNumber") %></p>
            <label>Contact Number:</label>
            <p><%= (Integer)request.getAttribute("contactNumber") %></p>
            <label>Car Model:</label>
            <p><%= (String)request.getAttribute("carModel") %></p>
            <label>Service Type:</label>
            <p><%= (String)request.getAttribute("serviceType") %></p>
        </div>
        <div style="text-align: center;">
    <a href="Booking_Appoiment.jsp" class="styled-button">Make Another Booking</a>
</div>

    <footer>
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                    <h5>Contact Information</h5>
                    <ul class="list-unstyled">
                        <li>Johor Baharu</li>
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