/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myservlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author reiner.dojen
 */
public class searchRiskServlet extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // Get what the user searched for
        String riskSearch = request.getParameter("searchRisk");

        System.out.println("-------------------------------------");
        System.out.println("risk string: " + riskSearch);
        System.out.println("-------------------------------------");

        // if the search string is a number
        // We treat this as an error, display the error page.
        if (isNumeric(riskSearch))
        {

        }
        else
        {

        }
        // take what user entered, validate it.
        // if it is a number
        // take user to error page jsp
        // otherwise
        //  // try match what they entered to a page and send to corresponding jsp
        // if no match then display the index.html page.

        {

        }
    }

    public static boolean isNumeric(String str)
    {
        try
        {
            Double num = Double.parseDouble(str);
        }
        catch (NumberFormatException nfe)
        {
            return false;
        }
        return true;
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
