<%--
    Document   : A1
    Created on : Mar 1, 2015, 1:58:28 PM
    Author     : cathal
--%>

<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Risk 2</title>

        <%!public String getResources(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
            {
                String added = "";
                RequestDispatcher hd = request.getRequestDispatcher("resources.html");
                hd.include(request, response);
                return added;
            }%>
        <%= getResources(request, response)%>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 2: A2-Broken Authentication and Session Management</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Application functions related to authentication and session
                    management are often not implemented correctly, allowing
                    attackers to compromise passwords, keys, or session tokens,
                    or to exploit other implementation flaws to assume other
                    users’ identities.
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
                                        <p>Such flaws may allow some or even all accounts to be attacked. Once successful, the attacker can do anything the victim could do. Privileged accounts are frequently targeted.</p
                                    </div>
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
                                    <p>Consider the business value of the affected data or application functions.
                                        Also consider the business impact of public exposure of the vulnerability.</p>
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
                Attacker uses leaks or flaws in the authentication or session management functions (e.g., exposed accounts, passwords, session IDs) to impersonate users.
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
            </div>
            <div class="panel-body">
                <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                    <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                        How Do I Prevent 'Broken Authentication and Session Management'?</div>
                    <p>The primary recommendation for an organization is to make available to developers:
                    </p>
                    <ol>
                        <li> <b>A single set of strong authentication and session management controls.</b> Such controls should strive to:
                            <ol>
                                <li> meet all the authentication and session management requirements defined in OWASP’s <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/ASVS">Application Security Verification Standard</a> (ASVS) areas V2 (Authentication) and V3 (Session Management).
                                </li>
                                <li> have a simple interface for developers. Consider the <a rel="nofollow" class="external text" href="http://owasp-esapi-java.googlecode.com/svn/trunk_doc/latest/org/owasp/esapi/Authenticator.html">ESAPI Authenticator and User APIs</a> as good examples to emulate, use, or build upon.
                                </li>
                            </ol>
                        </li>
                        <li> Strong efforts should also be made to avoid XSS flaws which can be used to steal session IDs. See <a href="/index.php/Top_10_2013-A3-Cross-Site_Scripting_(XSS)" title="Top 10 2013-A3-Cross-Site Scripting (XSS)">A3</a>.
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
                    <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/287.html">CWE Entry 287 on Improper Authentication</a>
                    </li>
                    <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/384.html">CWE Entry 384 on Session Fixation</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
