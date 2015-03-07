/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
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
 * @author reiner.dojen
 */
public class selectRiskServlet extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // Create cookie to store last selected risk
        Cookie last_risk = new Cookie("risk", request.getParameter("risks"));

        // set expirary time to 24 hours
        last_risk.setMaxAge(60 * 60 * 24);

        // Add risk cookie to response headers
        response.addCookie(last_risk);

        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>OWASP Top 10 Risks</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<table>");
        out.println("<tr><td>Risk: </td><td>");
        out.println(getRisk(request.getParameter("risks")) + "</td></tr>");
        out.println("</td></tr></table>");
        out.println("</body>");
        out.println("</html>");

        String nextJSP = "/A" + request.getParameter("risks") + ".jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request, response);
    }

    public String getRisk(String risk_selection)
    {
        int risk = Integer.parseInt(risk_selection);
        String riskString;
        switch (risk)
        {
            case 1:
                riskString = "A1-Injection";
                break;
            case 2:
                riskString = "A2-Broken Authentication and Session Management";
                break;
            case 3:
                riskString = "A3-Cross-Site Scripting (XSS)";
                break;
            case 4:
                riskString = "A4-Insecure Direct Object References";
                break;
            case 5:
                riskString = "A5-Security Misconfiguration";
                break;
            case 6:
                riskString = "A6-Sensitive Data Exposure";
                break;
            case 7:
                riskString = "A7-Missing Function Level Access Control";
                break;
            case 8:
                riskString = "A8-Cross-Site Request Forgery (CSRF)";
                break;
            case 9:
                riskString = "A9-Using Components with Known Vulnerabilities";
                break;
            case 10:
                riskString = "A10-Unvalidated Redirects and Forwards";
                break;
            default:
                riskString = "Invalid Selection";
        }
        return riskString;

    }
}
