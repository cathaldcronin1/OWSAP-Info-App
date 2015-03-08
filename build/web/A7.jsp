<%--
    Document   : A7.jsp
    Date: 08/03/2015
    Author     : Cathal Cronin
    ID: 10131531
    Version: 1.0
--%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Risk 7</title>
        <%-- JSP Method Declaration to retireve  external resources --%>
        <%!
            public String getResources(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
            {
                String added = "";
                RequestDispatcher hd = request.getRequestDispatcher("resources.html");
                hd.include(request, response);
                return added;
            }
        %>
        <%-- JSP Expression to call my getResources function that I declared --%>
        <%= getResources(request, response)%>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 7: A7-Missing Function Level Access Control</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Most web applications verify function level access rights before
                    making that functionality visible in the UI. However, applications
                    need to perform the same access control checks on the server when
                    each function is accessed. If requests are not verified, attackers
                    will be able to forge requests in order to access functionality
                    without proper authorization.
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>Impact of Injection Attacks</b></h3>
                </div>
                <h2 class="panel-title">
                    <div id="collapse-764" class="panel-collapse collapse in" style="height: auto;">
                        <div class="panel-body">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2 class="panel-title">
                                        <a href="#collapse-765" data-parent="#collapsible-764" class="accordion-toggle" data-toggle="collapse">Technical Impacts</a>
                                    </h2>
                                </div>
                                <div id="collapse-765" class="panel-collapse collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <p>Such flaws allow attackers to access unauthorized functionality. Administrative functions are key targets for this type of attack.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2 class="panel-title">
                                        <a href="#collapse-766" data-parent="#collapsible-764" class="accordion-toggle" data-toggle="collapse">Business Impacts</a>
                                    </h2>
                                </div>
                                <div id="collapse-766" class="panel-collapse collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <p>Consider the business value of the exposed functions and the data they process. Also consider the impact to your reputation if this vulnerability became public.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>Typical Attack Scenario</b></h3>
                </div>
                <div class="panel-body">
                    Attacker, who is an authorized system user, simply changes the URL or a parameter to a privileged function. Is access granted? Anonymous users could access private functions that aren’t protected.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Missing Function Level Access Control'?</div>
                        <p>Your application should have a consistent and easy to analyze authorization module that is invoked from all of your business functions.  Frequently, such protection is provided by one or more components external to the application code.
                        </p>
                        <ol>
                            <li> Think about the process for managing entitlements and ensure you can update and audit easily. Don’t hard code.
                            </li>
                            <li> The enforcement mechanism(s) should deny all access by default, requiring explicit grants to specific roles for access to every function.
                            </li>
                            <li> If the function is involved in a workflow, check to make sure the conditions are in the proper state to allow access.
                            </li>
                        </ol>
                        <p>NOTE: Most web applications don’t display links and buttons to unauthorized functions, but this “presentation layer access control” doesn’t actually provide protection. You must <u>also</u> implement checks in the controller or business logic.
                </p><p><br>
            </p>
            </td>


        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><b>Further Information</b></h3>
        </div>
        <div class="panel-body">
            <ul>
                <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/285.html">CWE Entry 285 on Improper Access Control (Authorization)</a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
