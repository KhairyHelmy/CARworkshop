/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/LessonAvailabilityServlet")
public class LessonAvailabilityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");

        String[] availableSlots = {
            "09:00 AM - 10:00 AM",
            "10:30 AM - 11:30 AM",
            "01:00 PM - 02:00 PM",
            "03:00 PM - 04:00 PM"
        };

        request.setAttribute("availableSlots", availableSlots);
        request.setAttribute("selectedDate", date);
        RequestDispatcher rd = request.getRequestDispatcher("lessonBooking.jsp");
        rd.forward(request, response);
    }
}
