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
                riskString = "Injections";
                break;
            case 2:
                riskString = "Broken Authentication and Session Management";
                break;
            case 3:
                riskString = "Cross-Site Scripting (XSS)";
                break;
            case 4:
                riskString = "Insecure Direct Object References";
                break;
            case 5:
                riskString = "Security Misconfiguration";
                break;
            case 6:
                riskString = "Sensitive Data Exposure";
                break;
            case 7:
                riskString = "Missing Function Level Access Control";
                break;
            case 8:
                riskString = "Cross-Site Request Forgery (CSRF)";
                break;
            case 9:
                riskString = "Using Components with Known Vulnerabilities";
                break;
            case 10:
                riskString = "Unvalidated Redirects and Forwards";
                break;
            default:
                riskString = "Invalid Selection";
        }
        return riskString;

    }
}
