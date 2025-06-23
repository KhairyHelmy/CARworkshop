import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

// Map this servlet to a URL pattern
@WebServlet("/WorkshopServlet")
public class WorkshopServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle GET requests

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve the action parameter
        String action = request.getParameter("action");

        // Routing logic based on the action parameter
        if (action == null) {
            displayHomePage(out);
        } else {
            switch (action) {
                case "booking":
                    displayBookingPage(out);
                    break;
                case "contact":
                    displayContactPage(out);
                    break;
                case "inventory":
                    displayInventoryPage(out);
                    break;
                default:
                    displayErrorPage(out);
                    break;
            }
        }
    }

    // Handle POST requests
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Example for processing form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<h1>Thank you for contacting us!</h1>");
        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Message: " + message + "</p>");
        out.println("<a href='Homepage.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }

    private void displayHomePage(PrintWriter out) {
        out.println("<html><body>");
        out.println("<h1>Welcome to the Car Workshop Management System</h1>");
        out.println("<a href='?action=booking'>Booking</a><br>");
        out.println("<a href='?action=contact'>Contact</a><br>");
        out.println("<a href='?action=inventory'>Inventory</a>");
        out.println("</body></html>");
    }

    private void displayBookingPage(PrintWriter out) {
        out.println("<html><body>");
        out.println("<h1>Booking Page</h1>");
        out.println("<p>Here you can book appointments.</p>");
        out.println("<a href='Homepage.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }

    private void displayContactPage(PrintWriter out) {
        out.println("<html><body>");
        out.println("<h1>Contact Page</h1>");
        out.println("<p>Contact us at alangtyre@gmail.com or call +60 11-1292 1291.</p>");
        out.println("<a href='Homepage.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }

    private void displayInventoryPage(PrintWriter out) {
        out.println("<html><body>");
        out.println("<h1>Inventory Page</h1>");
        out.println("<p>Here you can manage your inventory.</p>");
        out.println("<a href='Homepage.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }

    private void displayErrorPage(PrintWriter out) {
        out.println("<html><body>");
        out.println("<h1>Error: Page not found</h1>");
        out.println("<a href='Homepage.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }
}
