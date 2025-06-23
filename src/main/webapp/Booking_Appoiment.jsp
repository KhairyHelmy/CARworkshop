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
        footer {
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #1100bb;
            color: black;
            padding: 20px 0;
        }
        footer a {
            color: black;
            text-decoration: none;
        }
        footer a:hover {
            color: gray;
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
        .note-form a {
            display: inline-block;
            margin-top: 10px;
            color: white;
            text-decoration: none;
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
            <li><a href="StartLogin.jsp">Logout</a></li>
        </ul>
    </nav>

    <div class="container">
        <div class="note-form">
            <form action="BookingServlet" method="post">
                <label for="carOwnerName">Car Owner Name:</label>
                <input type="text" id="carOwnerName" name="carOwnerName" placeholder="Enter car owner name" required>
                
                <label for="carPlateNumber">Car Plate Number:</label>
                <input type="text" id="carPlateNumber" name="carPlateNumber" placeholder="Enter car plate number" required>
                
                <label for="phone">phone:</label>
                <input type="text" id ="phone" name="phone" placeholder="Enter contact number" required>
                
                <label for="carModel">Car Model:</label>
                <input type="text" id="carModel" name="carModel" placeholder="Enter car model" required>
                
                <label for="serviceType">Service Type:</label>
                <select id="serviceType" name="serviceType" required>
                    <option value="" disabled selected>Select your service type</option>
                    <option value="Services Car">Services Car</option>
                    <option value="Maintenance">Maintenance</option>
                    <option value="Tyre and Wheel">Tyre and Wheel</option>
                    <option value="Troubleshoot and Problem">Troubleshoot and Problem</option>
                    <option value="AirCond Services">AirCond Services</option>
                </select>

                <div>
                    <input type="submit" value="Submit">
                    <button type="reset">Cancel</button>
                </div>
            </form>
        </div>
    </div>

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