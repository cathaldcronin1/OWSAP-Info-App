<%--
    Document   : A4.jsp
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
        <title>Risk 4</title>
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
                <h1>Risk 4: A4-Insecure Direct Object References</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    A direct object reference occurs when a developer exposes a reference
                    to an internal implementation object, such as a file, directory,
                    or database key. Without an access control check or other protection,
                    attackers can manipulate these references to access unauthorized data.
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
                                        <p>Such flaws can compromise all the data that can be referenced by the parameter. Unless object references are unpredictable, it’s easy for an attacker to access all available data of that type.</p>
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
                                        <p>Consider the business value of the exposed data.
                                            Also consider the business impact of public exposure of the vulnerability</p>
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
                    Attacker, who is an authorized system user, simply changes a parameter value that directly refers to a system object to another object the user isn’t authorized for. Is access granted?
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Insecure Direct Object References'?</div>
                        <p>Preventing insecure direct object references requires selecting an approach for protecting each user accessible object (e.g., object number, filename):
                        </p>
                        <ol>
                            <li> <b>Use per user or session indirect object references.</b> This prevents attackers from directly targeting unauthorized resources. For example, instead of using the resource’s database key, a drop down list of six resources authorized for the current user could use the numbers 1 to 6 to indicate which value the user selected. The application has to map the per-user indirect reference back to the actual database key on the server. OWASP’s <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/ESAPI">ESAPI</a> includes both sequential and random access reference maps that developers can use to eliminate direct object references.
                            </li>
                            <li> <b>Check access.</b> Each use of a direct object reference from an untrusted source must include an access control check to ensure the user is authorized for the requested object.
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
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/639.html">CWE Entry 639 on Insecure Direct Object References</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/22.html">CWE Entry 22 on Path Traversal</a> (is an example of a Direct Object Reference attack)
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
