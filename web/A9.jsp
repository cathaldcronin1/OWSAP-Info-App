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
        <title>Risk 9</title>
        <%
            RequestDispatcher hd = request.getRequestDispatcher("resources.html");
            hd.include(request, response);
        %>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Risk 9: A9-Using Components with Known Vulnerabilities</h1>
                <p class="lead"></p>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>General Description</b></h3>
                </div>
                <div class="panel-body">
                    Components, such as libraries, frameworks, and other software
                    modules, almost always run with full privileges. If a vulnerable
                    component is exploited, such an attack can facilitate serious
                    data loss or server takeover. Applications using components
                    with known vulnerabilities may undermine application defenses
                    and enable a range of possible attacks and impacts.
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
                                        <p>The full range of weaknesses is possible, including injection, broken access control, XSS, etc. The impact could range from minimal to complete host takeover and data compromise.</p>
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
                                        <p>Consider what each vulnerability might mean for the business controlled by the affected application. It could be trivial or it could mean complete compromise.</p>
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
                    Attacker identifies a weak component through scanning or manual analysis. He customizes the exploit as needed and executes the attack. It gets more difficult if the used component is deep in the application.
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>How to avoid this weakness/risk</b></h3>
                </div>
                <div class="panel-body">
                    <td style="vertical-align: top; padding:5px; width: 50%; border: 3px solid #4d953d; background-color: #F8FFF8;">
                        <div style="font-style: bold; color: #000000; border-bottom: #999999 solid 1px; margin-bottom: 3px; padding-bottom: 3px;; font-size: 150%;">
                            How Do I Prevent 'Using Components with Known Vulnerabilities'?</div>
                        <p>One option is not to use components that you didn’t write. But that’s not very realistic.
                        </p><p>Most component projects do not create vulnerability patches for old versions. Instead, most simply fix the problem in the next version. So upgrading to these new versions is critical. Software projects should have a process in place to:
                        </p>
                        <ol>
                            <li> Identify all components and the versions you are using, including all dependencies. (e.g., the <a rel="nofollow" class="external text" href="http://mojo.codehaus.org/versions-maven-plugin/">versions</a> plugin).
                            </li>
                            <li> Monitor the security of these components in public databases, project mailing lists, and security mailing lists, and keep them up to date.
                            </li>
                            <li> Establish security policies governing component use, such as requiring certain software development practices, passing security tests, and acceptable licenses.
                            </li>
                            <li> Where appropriate, consider adding security wrappers around components to disable unused functionality and/ or secure weak or vulnerable aspects of the component.
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
                        <li> <a rel="nofollow" class="external text" href="http://www.aspectsecurity.com/research-presentations/the-unfortunate-reality-of-insecure-libraries">The Unfortunate Reality of Insecure Libraries</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://en.wikipedia.org/wiki/Open_source_software_security">Open Source Software Security</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://img.en25.com/Web/SonatypeInc/%7Bb2fa5ed8-938d-4bce-8a9c-d08ebeba826d%7D_Executive_Brief_-_Study-_Understanding_Security_Risks_in_OSS_Components-1.pdf">Addressing Security Concerns in Open Source Components</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://cve.mitre.org/">MITRE Common Vulnerabilities and Exposures</a>
                        </li>
                        <li> <a rel="nofollow" class="external text" href="http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2013-0277">Example Mass Assignment Vulnerability that was fixed in ActiveRecord, a Ruby on Rails GEM</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
