<%--
    Document   : A1
    Created on : Mar 1, 2015, 1:58:28 PM
    Author     : cathal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Risk 10</title>
        <%
            RequestDispatcher hd = request.getRequestDispatcher("resources.html");
            hd.include(request, response);
        %>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 10: A10-Unvalidated Redirects and Forwards</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Web applications frequently redirect and forward users to other
                    pages and websites, and use untrusted data to determine the
                    destination pages. Without proper validation, attackers can
                    redirect victims to phishing or malware sites, or use forwards
                    to access unauthorized pages.
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
                                        <p>Such redirects may attempt to install malware or trick victims into disclosing passwords or other sensitive information. Unsafe forwards may allow access control bypass.</p>
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
                                        <p>Consider the business value of retaining your users’ trust.

                                            What if they get owned by malware?

                                            What if attackers can access internal only functions</p>
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
                    Attacker links to unvalidated redirect and tricks victims into clicking it. Victims are more likely to click on it, since the link is to a valid site. Attacker targets unsafe forward to bypass security checks.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Unvalidated Redirects and Forwards'?</div>
                        <p>Safe use of redirects and forwards can be done in a number of ways:
                        </p>
                        <ol>
                            <li> Simply avoid using redirects and forwards.
                            </li>
                            <li> If used, don’t involve user parameters in calculating the destination. This can usually be done.
                            </li>
                            <li> If destination parameters can’t be avoided, ensure that the supplied value is valid, and authorized for the user.<br> It is recommended that any such destination parameters be a mapping value, rather than the actual URL or portion of the URL, and that server side code translate this mapping to the target URL.<br> Applications can use ESAPI to override the <a rel="nofollow" class="external text" href="http://owasp-esapi-java.googlecode.com/svn/trunk_doc/latest/org/owasp/esapi/filters/SecurityWrapperResponse.html">sendRedirect()</a> method to make sure all redirect destinations are safe.
                            </li>
                        </ol>
                        <p>Avoiding such flaws is extremely important as they are a favorite target of phishers trying to gain the user’s trust.
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
                        <li> CWE Entry 601 on Open Redirects
                        </li>
                        <li> WASC Article on URL Redirector Abuse
                        </li>
                        <li> Google blog article on the dangers of open redirects
                        </li>
                        <li> OWASP Top 10 for .NET article on Unvalidated Redirects and Forwards
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
