/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.controller;

import com.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/InventoryServlet")
public class InventoryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String part_name = request.getParameter("part_name");
        String quantity_in_stock = request.getParameter("quantity_in_stock");
        String supplier_id = request.getParameter("supplier_id");
        String price = request.getParameter("price");
        String part_type = request.getParameter("part_type");

        String insertQuery = "INSERT INTO inventory (part_name, quantity_in_stock, supplier_id, price, part_type) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(insertQuery)) {

            if (connection == null || connection.isClosed()) {
                response.sendRedirect("Inventory_Sparepart.jsp?message=db_error");
                return;
            }

            statement.setString(1, part_name);
            statement.setString(2, quantity_in_stock);
            statement.setString(3, supplier_id);
            statement.setString(4, price);
            statement.setString(5, part_type);

            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                request.setAttribute("success", "Data successfully added.");
                request.getRequestDispatcher("Manage_Inventory.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to insert data.");
                request.getRequestDispatcher("Inventory_Sparepart.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("Inventory_Sparepart.jsp").forward(request, response);
        }
    }
}
