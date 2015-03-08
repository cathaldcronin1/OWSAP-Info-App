package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cathal.Cronin
 */
public class selectRiskServlet extends HttpServlet
{

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // Get all cookies
        Cookie[] cookie_jar = request.getCookies();
        boolean found = false;

        // Check if there is cookies set
        if (cookie_jar != null)
        {
            // go through each cookie until we find the risk cookie
            for (Cookie cookie : cookie_jar)
            {
                if (cookie.getName().equals("risk"))
                {
                    // Update risk cookie to what user last selected
                    cookie.setValue(request.getParameter("risks"));
                    // Add risk cookie to response headers
                    response.addCookie(cookie);
                    found = true;
                }
            }
            // If we don't find the risk cookie, create it
            if (!found)
            {
                System.out.println("creating new Cookie");
                // Create cookie to store last selected risk
                Cookie last_risk = new Cookie("risk", request.getParameter("risks"));

                // set expirary time to 24 hours
                last_risk.setMaxAge(60 * 60 * 24);

                // Add risk cookie to response headers
                response.addCookie(last_risk);
            }

        }

        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String nextJSP = "/A" + request.getParameter("risks") + ".jsp";

        // forward to the page the user has selected
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request, response);
    }
}
