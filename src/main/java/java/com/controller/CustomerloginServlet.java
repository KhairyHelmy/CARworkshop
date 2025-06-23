package com.controller;

import com.util.DBConnection;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

@WebServlet("/CustomerloginServlet")
public class CustomerloginServlet extends HttpServlet {

    private static final String SALT = "your_unique_salt"; // Replace with a strong, randomly generated salt

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hash the password with salt
        String hashedPassword = hashPassword(password, SALT);

        String query = "SELECT * FROM users WHERE TRIM(name) = ? AND TRIM (password) = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            System.out.println("SQL Query: " + query);
            System.out.println("Username: " + username);
            System.out.println("Hashed Password: " + hashedPassword);

            if (connection == null || connection.isClosed()) {
                System.out.println("Database connection failed!");
                response.sendRedirect("CustomerLoginPage.jsp?message=db_error");
                return;
            }

            statement.setString(1, username);
            statement.setString(2, hashedPassword);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("HomepageCustomer.jsp");
            } else {
                System.out.println("Invalid login attempt for username: " + username);
                response.sendRedirect("CustomerLoginPage.jsp?message=invalid_credentials");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("CustomerLoginPage.jsp?message=error");
        }
    }

    private String hashPassword(String password, String salt) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256"); // Use a strong hashing algorithm
            md.update((salt + password).getBytes());
            byte[] hashedBytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null; // Handle the exception appropriately
        }
    }
}
