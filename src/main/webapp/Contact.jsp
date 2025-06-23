<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - Car Workshop</title>

    <!-- ====== CSS dari permintaan anda ====== -->
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
        background-color: #1100bb;   /* fallback */
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
       ul.nav li { margin-right: 20px; }
       ul.nav a {
        color: white;
        text-decoration: none;
        padding: 10px;
       }
       ul.nav a:hover { color: lightgray; }
       footer {
        left: 0;
        bottom: 0;
        width: 100%;
        background-color: #1100bb;
        color: black;
        padding: 20px 0;
       }
       footer a { color: black; text-decoration: none; }
       footer a:hover { color: gray; }

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
       .note-form label { margin: 5px 0; font-weight: bold; }
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
    <!-- Header / Welcome banner -->
    <div class="welcome">
        <h2>Contact Us</h2>
    </div>

    <!-- Navigation bar (edit links as needed) -->
    <nav>
        <ul class="nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="booking.jsp">Booking</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>

    <!-- Main contact content -->
    <div class="container">
        <!-- Flash message jika ada -->
        <%
            String msg = (String) request.getAttribute("msg");
            if (msg != null) {
        %>
            <p style="color: green; text-align:center;"><%= msg %></p>
        <%
            }
        %>

        <!-- CONTACT FORM -->
        <form class="note-form" action="ContactServlet" method="post">
            <label>Name</label>
            <input type="text" name="name" placeholder="Your Name" required>

            <label>Email</label>
            <input type="email" name="email" placeholder="Your Email" required>

            <label>Message</label>
            <input type="text" name="message" placeholder="Your Message" required>

            <button type="submit">Send Message</button>
        </form>

        <!-- WORKSHOP INFO -->
        <div style="margin-top:40px;">
            <h3>Workshop Info</h3>
            <p><strong>📍 Address:</strong> 123 Jalan Bengkel, 43000 Kajang, Selangor</p>
            <p><strong>📞 Phone:</strong> 012-3456789</p>
            <p><strong>🕒 Hours:</strong> Monday – Saturday, 9:00 AM – 6:00 PM</p>
            <iframe src="https://maps.google.com/?q=kajang" width="100%" height="300" style="border:0;" allowfullscreen></iframe>
        </div>

        <!-- FAQ -->
        <div style="margin-top:40px;">
            <h3>Frequently Asked Questions (FAQ)</h3>
            <div class="faq-item">
                <strong>Q: How can I book a service?</strong>
                A: You can book through the “Lesson Booking” module or send us a message above.
            </div>
            <div class="faq-item">
                <strong>Q: What services do you offer?</strong>
                A: General maintenance, oil changes, engine diagnostics, tyre services, and more.
            </div>
            <div class="faq-item">
                <strong>Q: Do you accept walk-ins?</strong>
                A: Yes, but booking in advance is recommended.
            </div>
            <div class="faq-item">
                <strong>Q: How much is a basic inspection?</strong>
                A: From RM 50, depending on vehicle and service.
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div style="text-align:center;">
            © <%= java.time.Year.now() %> Car Workshop Management System.
            Need help? <a href="mailto:support@carworkshop.com">Email us</a>
        </div>
    </footer>
</body>
</html>
