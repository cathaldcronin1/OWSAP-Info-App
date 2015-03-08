package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cathal.Cronin
 */
public class searchRiskServlet extends HttpServlet
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
        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        // Get what the user searched for
        String riskSearch = request.getParameter("searchRisk");

        // Get the corresponding info page for the searched risk.
        // forward to that page.
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(getRisk(riskSearch));
        dispatcher.forward(request, response);

    }

    /**
     * Based on the searched risk, returns the corresponding jsp page.
     *
     * @param risk String
     * @return String
     */
    public String getRisk(String risk)
    {
        String riskString;
        switch (risk)
        {
            case "Injections":
                riskString = "/A1.jsp";
                break;
            case "Broken Authentication and Session Management":
                riskString = "/A2.jsp";
                break;
            case "Cross-Site Scripting (XSS)":
                riskString = "/A3.jsp";
                break;
            case "Insecure Direct Object References":
                riskString = "/A4.jsp";
                break;
            case "Security Misconfiguration":
                riskString = "/A5.jsp";
                break;
            case "Sensitive Data Exposure":
                riskString = "/A6.jsp";
                break;
            case "Missing Function Level Access Control":
                riskString = "/A7.jsp";
                break;
            case "Cross-Site Request Forgery (CSRF)":
                riskString = "/A8.jsp";
                break;
            case "Using Components with Known Vulnerabilities":
                riskString = "/A9.jsp";
                break;
            case "Unvalidated Redirects and Forwards":
                riskString = "/A10.jsp";
                break;
            default:
                riskString = "Invalid Selection";
        }
        return riskString;

    }
}
