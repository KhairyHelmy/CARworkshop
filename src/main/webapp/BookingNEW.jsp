<%-- 
    Document   : BookingNEW
    Created on : 1 Jun 2025, 10:46:51 PM
    Author     : ASYIQDANIAL
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buat Tempahan</title>
</head>
<body>
    <h2>Borang Tempahan Bengkel</h2>
    <form action="BookingNEWServlet" method="post">
        Nama: <input type="text" name="nama"><br>
        Nombor Telefon: <input type="text" name="telefon"><br>
        Tarikh Booking: <input type="date" name="tarikh"><br>
        Masa Booking: <input type="time" name="masa"><br>
        <input type="submit" value="Hantar Tempahan">
    </form>
</body>
</html>
