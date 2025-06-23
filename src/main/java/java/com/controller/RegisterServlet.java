/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email"); // Case-sensitive fix (Email -> email)
        String role = request.getParameter("role");

        // SQL query to insert user data into the database
        String query = "INSERT INTO users (name, password, phone, email, role) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            // Set parameters for the prepared statement
            statement.setString(1, name);
            statement.setString(2, password); // Consider hashing the password for security
            statement.setString(3, phone);
            statement.setString(4, email);
            statement.setString(5, role);

            // Execute the query
            int result = statement.executeUpdate();

            if (result > 0) {
                // Registration successful
                if ("admin".equalsIgnoreCase(role)) {
                    response.sendRedirect("AdminLogin.jsp?message=registration_success");
                } else if ("customer".equalsIgnoreCase(role)) {
                    response.sendRedirect("AdminLogin.jsp?message=registration_success");
                } else {
                    // If role is unrecognized, redirect to a generic login or error page
                    response.sendRedirect("error.jsp?message=invalid_role");
                }
            } else {
                // Registration failed
                response.sendRedirect("Register.jsp?message=registration_failed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors
            response.sendRedirect("Register.jsp?message=error");
        }
    }
}
