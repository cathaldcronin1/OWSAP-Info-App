<%--
    Document   : index
    Created on : 05-Mar-2015, 22:32:51
    Author     : Cathal
--%>
<%@page trimDirectiveWhitespaces="true"%>
<%@page import="java.lang.NumberFormatException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page errorPage="errorPage.jsp"%>--%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>OWASP Information App</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            // Original JavaScript code by Chirp Internet: www.chirp.com.au
            // Please acknowledge use of this code by including this header.

            function getCookie(name)
            {
                var re = new RegExp(name + "=([^;]+)");
                var value = re.exec(document.cookie);
                return (value != null) ? unescape(value[1]) : null;
            }

            function myFunction()
            {
                document.getElementById("selectRisk").value = getCookie("risk");
            }
        </script>
    </head>
    <body onload="myFunction()">
        <!--String[] risks =-->
        <!--            {
                        "A1-Injection",
                        "A2-Broken Authentication and Session Management",
                        "A3-Cross-Site Scripting (XSS)",
                        "A4-Insecure Direct Object References",
                        "A5-Security Misconfiguration",
                        "A6-Sensitive Data Exposure",
                        "A7-Missing Function Level Access Control",
                        "A8-Cross-Site Request Forgery (CSRF)",
                        "A9-Using Components with Known Vulnerabilities",
                        "A10-Unvalidated Redirects and Forwards"-->
        <!--};%>-->
        <div class="navbar pull-right" role="navigation">
            <form class="navbar-form inline" action="" method="POST" role="search">
                <div class="row">
                    <div class="col-lg-6">
                        <div id="the-basics" class="input-group">
                            <input type="text" class="form-control typeahead" name ="searchRisk" placeholder="Search for a risk">
                            <span class="input-group-btn">
                                <button id="searchbtn" class="btn btn-default" type="submit">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="container">
            <h1> OWASP Information App </h1>
            <div class ="form-group">
                <form class="form-inline" action="selectRiskServlet" method="POST" name="risksForm">
                    <label for="chooseRisk">Select A Risk</label>
                    <select class="form-control" id="selectRisk" name="risks">
                        <option value="1">Injections</option>
                        <option value="2">Broken Authentication and Session Management</option>
                        <option value="3">Cross-Site Scripting (XSS)</option>
                        <option value="4">Insecure Direct Object References</option>
                        <option value="5">Security Misconfiguration</option>
                        <option value="6">Sensitive Data Exposure</option>
                        <option value="7">Missing Function Level Access Control</option>
                        <option value="8">Cross-Site Request Forgery (CSRF)</option>
                        <option value="9">Using Components with Known Vulnerabilities</option>
                        <option value="10">Unvalidated Redirects and Forwards</option>
                    </select>
                    <button type="submit" name="Next" class="btn btn-default">Next</button>
                </form>
            </div>
        </div>
        <script src="typeahead.js"></script>
        <script src="the-basics.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
    </body>
</html>

