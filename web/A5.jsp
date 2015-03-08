<%--
    Document   : A5.jsp
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
        <title>Risk 5</title>
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
                <h1>Risk 5: A5-Security Misconfiguration</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Good security requires having a secure configuration defined
                    and deployed for the application, frameworks, application server,
                    web server, database server, and platform. Secure settings should
                    be defined, implemented, and maintained, as defaults are often insecure.
                    Additionally, software should be kept up to date.
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
                                        <p>The system could be completely compromised without you knowing it. All of your data could be stolen or modified slowly over time.

                                            Recovery costs could be expensive</p>
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
                                        <p>The system could be completely compromised without you knowing it. All your data could be stolen or modified slowly over time.

                                            Recovery costs could be expensive.</p>
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
                    Attacker accesses default accounts, unused pages, unpatched flaws, unprotected files and directories, etc. to gain unauthorized access to or knowledge of the system.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Security Misconfiguration'?</div>
                        <p>The primary recommendations are to establish all of the following:
                        </p>
                        <ol>
                            <li> A repeatable hardening process that makes it fast and easy to deploy another environment that is properly locked down. Development, QA, and production environments should all be configured identically (with different passwords used in each environment). This process should be automated to minimize the effort required to setup a new secure environment.
                            </li>
                            <li> A process for keeping abreast of and deploying all new software updates and patches in a timely manner to each deployed environment. This needs to include <b>all code libraries as well (see new A9)</b>.
                            </li>
                            <li> A strong application architecture that provides effective, secure separation between components.
                            </li>
                            <li> Consider running scans and doing audits periodically to help detect future misconfigurations or missing patches.
                            </li>
                        </ol>
                    </td>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>Further Information</b></h3>
                </div>
                <div class="panel-body">
                    <ul>
                        <li> <a rel="nofollow" class="external text" href="http://www.pcmag.com/article2/0,2817,11525,00.asp">PC Magazine Article on Web Server Hardening</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/2.html">CWE Entry 2 on Environmental Security Flaws</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://benchmarks.cisecurity.org/downloads/benchmarks/">CIS Security Configuration Guides/Benchmarks</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
