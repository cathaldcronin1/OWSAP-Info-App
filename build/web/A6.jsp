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
        <title>Risk 6</title>
        <%
            RequestDispatcher hd = request.getRequestDispatcher("resources.html");
            hd.include(request, response);
        %>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 6: A6-Sensitive Data Exposure</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Many web applications do not properly protect sensitive data,
                    such as credit cards, tax IDs, and authentication credentials.
                    Attackers may steal or modify such weakly protected data to conduct
                    credit card fraud, identity theft, or other crimes. Sensitive data
                    deserves extra protection such as encryption at rest or in transit,
                    as well as special precautions when exchanged with the browser.
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
                                        <p>Failure frequently compromises all data that should have been protected. Typically, this information includes sensitive data such as health records, credentials, personal data, credit cards, etc.</p>
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
                                        <p>Consider the business value of the lost data and impact to your reputation. What is your legal liability if this data is exposed? Also consider the damage to your reputation.</p>
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
                    Attackers typically don’t break crypto directly. They break something else, such as steal keys, do man-in-the-middle attacks, or steal clear text data off the server, while in transit, or from the user’s browser.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Sensitive Data Exposure'?</div>
                        <p>The full perils of unsafe cryptography, SSL usage, and data protection are well beyond the scope of the Top 10. That said, for all sensitive data, do all of the following, at a minimum:
                        </p>
                        <ol>
                            <li> Considering the threats you plan to protect this data from (e.g., insider attack, external user), make sure you encrypt all sensitive data at rest and in transit in a manner that defends against these threats.
                            </li>
                            <li> Don’t store sensitive data unnecessarily. Discard it as soon as possible. Data you don’t have can’t be stolen.
                            </li>
                            <li> Ensure strong standard algorithms and strong keys are used, and proper key management is in place. Consider using <a rel="nofollow" class="external text" href="http://csrc.nist.gov/groups/STM/cmvp/documents/140-1/140val-all.htm">FIPS 140 validated cryptographic modules</a>.
                            </li>
                            <li> Ensure passwords are stored with an algorithm specifically designed for password protection, such as <a rel="nofollow" class="external text" href="http://en.wikipedia.org/wiki/Bcrypt">bcrypt</a>, <a rel="nofollow" class="external text" href="http://en.wikipedia.org/wiki/PBKDF2">PBKDF2</a>, or <a rel="nofollow" class="external text" href="http://en.wikipedia.org/wiki/Scrypt">scrypt</a>.
                            </li>
                            <li> Disable autocomplete on forms collecting sensitive data and disable caching for pages that contain sensitive data.
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
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/310.html">CWE Entry 310 on Cryptographic Issues</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/312.html">CWE Entry 312 on Cleartext Storage of Sensitive Information</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/319.html">CWE Entry 319 on Cleartext Transmission of Sensitive Information</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cwe.mitre.org/data/definitions/326.html">CWE Entry 326 on Weak Encryption</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
