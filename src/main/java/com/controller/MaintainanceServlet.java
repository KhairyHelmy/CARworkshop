package com.controller;


import com.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MaintainanceServlet")
public class MaintainanceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String plateNumber = request.getParameter("plateNumber");
        String carType = request.getParameter("carType");
        String damage = request.getParameter("damage");
        String repairStatus = request.getParameter("repairStatus");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DBConnection.getConnection();


            String sql = "INSERT INTO maintenance_records (plate_number, car_type, damage_description, repair_status, created_at) VALUES (?, ?, ?, ?, NOW())";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, plateNumber);
            stmt.setString(2, carType);
            stmt.setString(3, damage);
            stmt.setString(4, repairStatus);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("ViewMaintenance.jsp?success=1");
            } else {
                response.sendRedirect("MaintainanceCar.jsp?error=1");
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("MaintainanceCar.jsp?error=1");
        }
    }
}
