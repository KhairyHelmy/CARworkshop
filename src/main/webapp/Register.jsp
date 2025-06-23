<%-- 
    Document   : LoginPage
    Created on : 1 Jan 2025, 8:40:02 PM
    Author     : ASYIQDANIAL
--%>

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
            background-color: #1100bb;
            color: white;
        }
        .note-form a {
            display: inline-block;
            margin-top: 10px;
            color: #1100bb;
            text-decoration: none;
        }
    </style>
   
</head>
<body>
    <div class="welcome">
        <h1>Car Workshop Management System</h1>
    </div>

   

    <div class="container">
        <div class="note-form">
            <form action="RegisterServlet" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="name" placeholder="Enter username" required>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="**********" required>
                <label for="Contact Number">Contact Number</label>
                <input type="Contact Number" id="Contact Number" name="phone" placeholder="011" required>
                <label for="Email">Email</label>
                <input type="Email" id="Email" name="email" placeholder="s@gmail.com" required>
                <label for="registerRole" class="form-label">Role</label>
                <select class="form-select" id="registerRole" name="role" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="admin">admin</option>
                    <option value="customer">Customer</option>
                    <option value="Mechanic">Mechanic</option>
                    <option value="Manager">Manager</option>
                    
                </select>



                <form action="CustomerLoginPage.jsp" method="POST">
                    <!-- Other form fields here -->
                    <input type="submit" value="Submit">
                </form>


                    
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
