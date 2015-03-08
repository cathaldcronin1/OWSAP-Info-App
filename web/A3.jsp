<%--
    Document   : A1
    Created on : Mar 1, 2015, 1:58:28 PM
    Author     : cathal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Risk 3</title>
        <%
            RequestDispatcher hd = request.getRequestDispatcher("resources.html");
            hd.include(request, response);
        %>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 3: A3-Cross-Site Scripting (XSS)</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    XSS flaws occur whenever an application takes untrusted data
                    and sends it to a web browser without proper validation or escaping.
                    XSS allows attackers to execute scripts in the victim’s browser
                    which can hijack user sessions, deface web sites, or redirect
                    the user to malicious sites.
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
                                        <p>Attackers can execute scripts in a victim’s browser to hijack user sessions, deface web sites, insert hostile content, redirect users, hijack the user’s browser using malware, etc.</p>
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
                                        <p>Consider the business value of the affected system and all the data it processes.
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
                    Attacker sends text-based attack scripts that exploit the interpreter in the browser. Almost any source of data can be an attack vector, including internal sources such as data from the database.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Cross-Site Scripting (XSS)'?</div>
                        <p>Preventing XSS requires separation of untrusted data from active browser content.
                        </p>
                        <ol>
                            <li> The preferred option is to properly escape all untrusted data based on the HTML context (body, attribute, JavaScript, CSS, or URL) that the data will be placed into. See the <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet">OWASP XSS Prevention Cheat Sheet</a> for details on the required data escaping techniques.
                            </li>
                            <li> Positive or “whitelist” input validation is also recommended as it helps protect against XSS, but is <u>not a complete defense</u> as many applications require special characters in their input. Such validation should, as much as possible, validate the length, characters, format, and business rules on that data before accepting the input.
                            </li>
                            <li> For rich content, consider auto-sanitization libraries like OWASP’s <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/AntiSamy">AntiSamy</a> or the <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/OWASP_Java_HTML_Sanitizer_Project">Java HTML Sanitizer Project</a>.
                            </li>
                            <li> Consider <a rel="nofollow" class="external text" href="https://www.owasp.org/index.php/Content_Security_Policy">Content Security Policy (CSP)</a> to defend against XSS across your entire site.
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
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/79.html">CWE Entry 79 on Cross-Site Scripting</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
