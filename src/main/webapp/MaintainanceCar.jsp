<%-- 
    Document   : MaintainanceCar
    Created on : 24 May 2025, 11:47:39 PM
    Author     : ASYIQDANIAL
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Car Maintenance - Mechanic Panel</title>
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
        .note-form input,
        .note-form select,
        .note-form textarea {
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
    </style>
</head>
<body>

<div class="welcome">
    <h2>Car Maintenance Panel</h2>
</div>

<nav>
    <ul class="nav">
        <li><a href="Homepage.jsp">Home</a></li>
        <li><a href="booking.jsp">Booking</a></li>
        <li><a href="ViewMaintenance.jsp">Progress</a></li>
        <li><a href="LogoutServlet">Logout</a></li>
    </ul>
</nav>

<div class="container">
    <form class="note-form" action="MaintainanceServlet" method="post">
        <label>Car Plate Number</label>
        <input type="text" name="plateNumber" placeholder="eg. VDY1234" required>

        <label>Car Type</label>
        <select name="carType" required>
            <option value="">-- Select Type --</option>
            <option value="4x4">4x4</option>
            <option value="Sedan">Sedan</option>
        </select>

        <label>Damage Description</label>
        <textarea name="damage" placeholder="Describe the issue..." rows="4" required></textarea>

        <label>Repair Status</label>
        <select name="repairStatus" required>
            <option value="">-- Select Status --</option>
            <option value="Pending">Pending</option>
            <option value="Repairing">Repairing Car</option>
            <option value="Completed">Completed</option>
        </select>

        <button type="submit">Submit Maintenance Record</button>
    </form>
</div>

</body>
</html>
