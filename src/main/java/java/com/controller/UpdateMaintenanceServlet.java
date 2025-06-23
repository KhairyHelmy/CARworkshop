/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package java.com.controller;

 

import com.util.DBConnection;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UpdateMaintenanceServlet")
public class UpdateMaintenanceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String plateNumber = request.getParameter("plateNumber");
        String carType = request.getParameter("carType");
        String damage = request.getParameter("damage");
        String repairStatus = request.getParameter("repairStatus");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           Connection conn = DBConnection.getConnection();


            String sql = "UPDATE maintenance_records SET plate_number=?, car_type=?, damage_description=?, repair_status=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, plateNumber);
            ps.setString(2, carType);
            ps.setString(3, damage);
            ps.setString(4, repairStatus);
            ps.setInt(5, id);

            int rows = ps.executeUpdate();

            conn.close();

            if (rows > 0) {
                response.sendRedirect("ViewMaintenance.jsp?updated=1");
            } else {
                response.sendRedirect("ViewMaintenance.jsp?updated=0");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ViewMaintenance.jsp?updated=0");
        }
    }
}
