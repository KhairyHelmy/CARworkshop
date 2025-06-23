<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.itextpdf.text.*" %>
<%@ page import="com.itextpdf.text.pdf.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.itextpdf.text.*" %>
<%@ page import="com.itextpdf.text.pdf.*" %>
<%
if ("POST".equalsIgnoreCase(request.getMethod())) {
    response.setContentType("application/pdf");
    try {
        Document document = new Document();
        PdfWriter.getInstance(document, response.getOutputStream());
        document.open();

       

 
// Baru letak header dan lain-lain...

        // Data dari form
        String plateNumber = request.getParameter("plateNumber");
        String serviceType = request.getParameter("serviceType");
        String carType = request.getParameter("carType");
        String amount = request.getParameter("amount");
        String phoneNumber = request.getParameter("phoneNumber");

        // Font
        Font headerFont = new Font(Font.FontFamily.HELVETICA, 20, Font.BOLD, new BaseColor(0, 128, 128));
        Font labelFont = new Font(Font.FontFamily.HELVETICA, 12, Font.BOLD);
        Font textFont = new Font(Font.FontFamily.HELVETICA, 12);

        // Header
        Paragraph header = new Paragraph("Receipt", headerFont);
        header.setAlignment(Element.ALIGN_RIGHT);
        document.add(header);
        document.add(Chunk.NEWLINE);

        // Table for company & bill info
        PdfPTable infoTable = new PdfPTable(2);
        infoTable.setWidthPercentage(100);
        infoTable.setSpacingBefore(10f);
        infoTable.setSpacingAfter(10f);
        infoTable.setWidths(new float[] {1f, 1f});

        PdfPCell left = new PdfPCell();
        left.setBorder(Rectangle.NO_BORDER);
        left.addElement(new Paragraph("Danial Workshop", labelFont));
        left.addElement(new Paragraph("Pasir Gudang\nJohor:\nMalaysia:\n81300:", textFont));
        infoTable.addCell(left);

        PdfPCell right = new PdfPCell();
        right.setBorder(Rectangle.NO_BORDER);
        right.addElement(new Paragraph("Details", labelFont));
        right.addElement(new Paragraph("Receipt No:1 -\nReceipt Date: 2-\nPayment Date: 20 January 2020-", textFont));
        infoTable.addCell(right);

        document.add(infoTable);

        // Customer and service info table
        PdfPTable custTable = new PdfPTable(2);
        custTable.setWidthPercentage(100);
        custTable.setSpacingBefore(10f);
        custTable.setWidths(new float[] {1f, 1f});

        PdfPCell cust = new PdfPCell();
        cust.setBorder(Rectangle.NO_BORDER);
        cust.addElement(new Paragraph("Bill To:", labelFont));
        cust.addElement(new Paragraph("Customer Phone: " + phoneNumber, textFont));
        custTable.addCell(cust);

        PdfPCell serv = new PdfPCell();
        serv.setBorder(Rectangle.NO_BORDER);
        serv.addElement(new Paragraph("Service Info:", labelFont));
        serv.addElement(new Paragraph("Plate No: " + plateNumber + "\nService Type: " + serviceType + "\nCar Type: " + carType, textFont));
        custTable.addCell(serv);

        document.add(custTable);
        document.add(Chunk.NEWLINE);

        // Description Table
        PdfPTable table = new PdfPTable(4);
        table.setWidthPercentage(100);
        table.setWidths(new float[]{4, 1, 1, 1});
        table.addCell(new PdfPCell(new Phrase("Description", labelFont)));
        table.addCell(new PdfPCell(new Phrase("Quantity", labelFont)));
        table.addCell(new PdfPCell(new Phrase("Rate", labelFont)));
        table.addCell(new PdfPCell(new Phrase("Amount", labelFont)));

        // Dummy rows – adjust if you want to add more details
        table.addCell(new Phrase(serviceType, textFont));
        table.addCell("1");
        table.addCell(amount);
        table.addCell(amount);

        document.add(table);
        document.add(Chunk.NEWLINE);

        // Total
        PdfPTable totalTable = new PdfPTable(2);
        totalTable.setWidthPercentage(40);
        totalTable.setHorizontalAlignment(Element.ALIGN_RIGHT);
        totalTable.addCell(new PdfPCell(new Phrase("Total Paid", labelFont)));
        PdfPCell totalAmt = new PdfPCell(new Phrase("RM " + amount, labelFont));
        totalAmt.setHorizontalAlignment(Element.ALIGN_RIGHT);
        totalTable.addCell(totalAmt);
        document.add(totalTable);

        document.add(Chunk.NEWLINE);
        document.add(new Paragraph("Thank you for choosing our service.", textFont));
        
 
        document.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Service Receipt</title>
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
        background-color: #0056b3;
        color: white;
    }

        h2 {
            text-align: left;
            padding: 30px;
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

        .form-container {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid black;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            border: 1px solid black;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: 1px solid black;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
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

    <div class="form-container">
        <h2>Car Service Receipt</h2>
        <form method="post">

            <div class="form-group">
                <label for="plateNumber">No Plat Kereta:</label>
                <input type="text" id="plateNumber" name="plateNumber" required>
            </div>

            <div class="form-group">
                <label for="serviceType">Jenis Servis:</label>
                <select id="serviceType" name="serviceType" required>
                    <option value="">Pilih Jenis Servis</option>
                    <option value="Servis Minyak">Servis Minyak</option>
                    <option value="Servis Brek">Servis Brek</option>
                    <option value="Servis Enjin">Servis Enjin</option>
                    <option value="Servis Transmisi">Servis Transmisi</option>
                    <option value="Servis Penyelenggaraan Umum">Servis Penyelenggaraan Umum</option>
                </select>
            </div>

            <div class="form-group">
                <label for="carType">Jenis Kereta:</label>
                <input type="text" id="carType" name="carType" required>
            </div>

            <div class="form-group">
                <label for="amount">Bayaran Jumlah (RM):</label>
                <input type="text" id="amount" name="amount" required pattern="[0-9]+(\.[0-9]{2})?">
            </div>

            <div class="form-group">
                <label for="phoneNumber">No Tel Customer (WhatsApp):</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required pattern="[0-9]{10,12}" 
                       placeholder="Contoh: 60123456789">
            </div>

            <button type="submit">Generate Receipt & Send via WhatsApp</button>
        </form>
    </div>
</body>
</html>
