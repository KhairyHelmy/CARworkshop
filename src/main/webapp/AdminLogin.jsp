<%-- 
    Document   : AdminLogin
    Created on : 3 Jan 2025, 11:16:18 PM
    Author     : ASYIQDANIAL
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CARS</title>
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
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 3px;
            width: 100%;
             font-weight: bold;
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
            <form action="AdminloginServlet" method="POST">

                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter username" required>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="**" required>
                
             <button type="submit" style="width: 100%;">Login</button>


                <a href="Register.jsp" style="width: 100%;">
                    <button type="button" style="width: 100%;">Register</button>
                    
                </a>
              <a href="StartLogin.jsp" style="width: 100%;">
                    <button type="button" style="width: 100%;">Back</button>
                    
                </a>
             
             
             