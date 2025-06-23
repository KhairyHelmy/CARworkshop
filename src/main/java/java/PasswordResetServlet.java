/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASYIQDANIAL
 */
@WebServlet("/PasswordResetServlet")
public class PasswordResetServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html;charset=UTF-8");

        // Get email parameter from the form
        String email = request.getParameter("Email");

        try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<head><title>Password Reset</title></head>");
            out.println("<body>");
            out.println("<h1>Password Reset</h1>");

            if (email == null || email.isEmpty()) {
                out.println("<p style='color: red;'>Email address is required.</p>");
            } else {
                // Simulate sending reset link (replace this with actual email sending logic)
                out.println("<p>A password reset link has been sent to your email address: " + email + "</p>");
            }

            out.println("<a href='LoginPage.jsp'>Back to Login</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("LoginPage.jsp"); // Redirect to login page on GET request
    }
}
