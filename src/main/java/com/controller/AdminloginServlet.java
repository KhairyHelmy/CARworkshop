package com.controller;

import com.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String query = "SELECT * FROM users WHERE name = ? AND  password = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
              
            System.out.println("Username: " + username);
            System.out.println("Password: " + password);

            if (connection == null || connection.isClosed()) {
                System.out.println("Database connection failed!");
                response.sendRedirect("AdminLogin.jsp?message=db_error");
                return;
            }

            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("Homepage.jsp");
            } else {
                System.out.println("Invalid login attempt for username: " + username);
                response.sendRedirect("AdminLogin.jsp?message=invalidhere");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("AdminLogin.jsp?message=error");
        }
    }
}
