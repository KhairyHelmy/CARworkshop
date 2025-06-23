package com.controller;

import com.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String carOwnerName = request.getParameter("carOwnerName");
        String carPlateNumber = request.getParameter("carPlateNumber");
        String phone = request.getParameter("phone");
        String carModel = request.getParameter("carModel");
        String serviceType = request.getParameter("serviceType");

        String insertQuery = "INSERT INTO booking (car_owner_name, car_plate_number, phone, car_model, service_type) VALUES (?, ?, ?, ?, ?)";
        request.setAttribute("carOwnerName", carOwnerName);
        request.setAttribute("carPlateNumber", carPlateNumber);
        request.setAttribute("phone", phone);
        request.setAttribute("carModel", carModel);
        request.setAttribute("serviceType", serviceType);


        
        
        
        
        
        
        
        
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(insertQuery)) {

            if (connection == null || connection.isClosed()) {
                System.out.println("Database connection failed!");
                response.sendRedirect("Booking_Appoiment.jsp?message=db_error");
                return;
            }

            // Set parameters for the prepared statement
            statement.setString(1, carOwnerName);
            statement.setString(2, carPlateNumber);
            statement.setString(3, phone);
            statement.setString(4, carModel);
            statement.setString(5, serviceType);

            // Execute the insert
            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                // Booking was successful, redirect to confirmation page
                //response.sendRedirect("BookingConfirmation.jsp");
                RequestDispatcher dispatcher = request.getRequestDispatcher("BookingConfirmation.jsp");
                dispatcher.forward(request, response);
            } else {
                // Booking failed
                //response.sendRedirect("Booking_Appoiment.jsp?message=booking_failed");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Booking_Appoiment.jsp");
                dispatcher.forward(request, response);
            }
        } catch (SQLException e) {
            //response.sendRedirect("Booking_Appoiment.jsp?message=error");
            RequestDispatcher dispatcher = request.getRequestDispatcher("Booking_Appoiment.jsp");
                dispatcher.forward(request, response);
        }
    }
}
