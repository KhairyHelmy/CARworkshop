<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Booking</title>
    <style>
       body {
   
    background-size: cover;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
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
    width: 50%;
    margin: 50px auto;
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-top: 10px;
    font-weight: bold;
}

input, select, button {
    margin-top: 5px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #0056b3;
    color: white;
    border: none;
    cursor: pointer;
    margin-top: 20px;
}

button:hover {
    background-color: #004090;
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
</style>
</head>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Register</title>
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
    <h1>Update Register</h1>

<%
    String DB_URL = System.getenv("DB_URL");
    String DB_USERNAME = System.getenv("DB_USER");
    String DB_PASSWORD = System.getenv("DB_PASSWORD");

    String id = request.getParameter("id");
    String name = "", password = "", phone = "", email = "", role = "";

    // Handle POST request (update)
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        id = request.getParameter("id");
        name = request.getParameter("name");
        password = request.getParameter("password");
        phone = request.getParameter("phone");
        email = request.getParameter("email");
        role = request.getParameter("role");

        // Validate
        if (name == null || name.trim().isEmpty() ||
            password == null || phone == null || email == null || role == null) {
%>
            <script>
                alert("Please fill in all fields.");
                window.history.back();
            </script>
<%
            return;
        }

        try (
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            PreparedStatement stmt = conn.prepareStatement(
                "UPDATE users SET name=?, password=?, phone=?, email=?, role=? WHERE id=?"
            );
        ) {
            stmt.setString(1, name);
            stmt.setString(2, password);
            stmt.setString(3, phone);
            stmt.setString(4, email);
            stmt.setString(5, role);
            stmt.setInt(6, Integer.parseInt(id));

            int rows = stmt.executeUpdate();

            if (rows > 0) {
%>
                <script>
                    alert("Register updated successfully!");
                    window.location.href = "ManageRegister.jsp";
                </script>
<%
            } else {
%>
                <script>
                    alert("Update failed. ID not found.");
                    window.location.href = "ManageRegister.jsp";
                </script>
<%
            }
            return;
        } catch (Exception e) {
%>
            <script>
                alert("Error: <%= e.getMessage().replace("'", "") %>");
                window.location.href = "ManageRegister.jsp";
            </script>
<%
            return;
        }
    }

    // Handle GET request (load user data)
    if (id != null) {
        try (
            Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE id = ?");
        ) {
            stmt.setInt(1, Integer.parseInt(id));
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                name = rs.getString("name");
                password = rs.getString("password");
                phone = rs.getString("phone");
                email = rs.getString("email");
                role = rs.getString("role");
            } else {
%>
                <script>
                    alert("User not found.");
                    window.location.href = "ManageRegister.jsp";
                </script>
<%
                return;
            }

            rs.close();
        } catch (Exception e) {
%>
            <script>
                alert("Error: <%= e.getMessage().replace("'", "") %>");
                window.location.href = "ManageRegister.jsp";
            </script>
<%
            return;
        }
    } else {
%>
    <script>
        alert("Invalid User ID!");
        window.location.href = "ManageRegister.jsp";
    </script>
<%
        return;
    }
%>

<form method="post" action="">
    <input type="hidden" name="id" value="<%= id %>">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= name %>" required><br>

    <label for="password">Password:</label>
    <input type="text" id="password" name="password" value="<%= password %>" required><br>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="<%= phone %>" required><br>

    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="<%= email %>" required><br>

    <label for="role">Role:</label>
    <input type="text" id="role" name="role" value="<%= role %>" required><br>

    <button type="submit">Update Register</button>
</form>

</div>
</body>
</html>
