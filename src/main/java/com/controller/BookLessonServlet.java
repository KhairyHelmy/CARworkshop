/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/BookLessonServlet")
public class BookLessonServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");
        String slot = request.getParameter("slot");

        // Save booking logic here (e.g., insert into database)

        request.setAttribute("message", "Successfully booked for " + date + " at " + slot);
        RequestDispatcher rd = request.getRequestDispatcher("confirmation.jsp");
        rd.forward(request, response);
    }
}
