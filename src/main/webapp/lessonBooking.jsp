<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lesson Booking</title>
    <style>
        body { font-family: Arial; background-color: #f8f9fa; }
        .sidebar {
            width: 200px;
            height: 100vh;
            background-color: #003366;
            color: white;
            float: left;
            padding: 20px;
        }
        .sidebar a {
            display: block;
            color: white;
            margin: 10px 0;
            text-decoration: none;
        }
        .main {
            margin-left: 220px;
            padding: 40px;
        }
        .card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            border: 1px solid #ccc;
            width: 400px;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-blue { background-color: #0056b3; color: white; }
        .btn-grey { background-color: grey; color: white; }
    </style>
</head>
<body>

<div class="sidebar">
    <img src="psm-logo.png" width="100"><br><br>
    <a href="#">Dashboard</a>
    <a href="#">Manage Profile</a>
    <a href="#">Booking</a>
    <a href="#">Schedule</a>
    <a href="#">Logout</a>
</div>

<div class="main">
    <div class="card">
        <h2>Lesson Booking</h2>
        <form action="LessonAvailabilityServlet" method="post">
            <label><strong>Select Date:</strong></label><br>
            <input type="date" name="date" required><br><br>
            <button type="submit" class="btn btn-blue">Check Availability</button>
            <button type="reset" class="btn btn-grey">Cancel</button>
        </form>
    </div>

    <br/>

    <%
        String[] slots = (String[]) request.getAttribute("availableSlots");
        if (slots != null) {
    %>
        <div class="card">
            <form action="BookLessonServlet" method="post">
                <h3>Available Time Slots:</h3>
                <input type="hidden" name="date" value="<%= request.getAttribute("selectedDate") %>">
                <%
                    for (String slot : slots) {
                %>
                    <input type="radio" name="slot" value="<%= slot %>" required> <%= slot %><br>
                <%
                    }
                %>
                <br>
                <button type="submit" class="btn btn-blue">Book Lesson</button>
            </form>
        </div>
    <%
        }
    %>

</div>
</body>
</html>
