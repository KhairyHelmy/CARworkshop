package com.controller;

import java.io.*;
import java.sql.*;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ReceiptPayment")
public class ReceiptPayment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String plateNumber = request.getParameter("plateNumber");
        String serviceType = request.getParameter("serviceType");
        String carType = request.getParameter("carType");
        String amount = request.getParameter("amount");
        String phoneNumber = request.getParameter("phoneNumber");

        String receiptText = "Resit Servis Kereta:\n" +
                             "No Plat: " + plateNumber + "\n" +
                             "Jenis Servis: " + serviceType + "\n" +
                             "Jenis Kereta: " + carType + "\n" +
                             "Jumlah Bayaran: RM" + amount + "\n" +
                             "Terima kasih kerana menggunakan servis kami!";

        int receiptId = -1;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/workshopdb", "root", "");
            String sql = "INSERT INTO receipts (plate_number, service_type, car_type, amount, phone_number, receipt_date, receipt_text) " +
                         "VALUES (?, ?, ?, ?, ?, NOW(), ?)";
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, plateNumber);
            ps.setString(2, serviceType);
            ps.setString(3, carType);
            ps.setBigDecimal(4, new java.math.BigDecimal(amount));
            ps.setString(5, phoneNumber);
            ps.setString(6, receiptText);

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                receiptId = rs.getInt(1); // dapatkan ID auto increment
            }

            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Hantar ID ke ViewReceipt.jsp
        response.sendRedirect("ViewReceipt.jsp?id=" + receiptId);
    }
}
