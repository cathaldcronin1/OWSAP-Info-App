<%--
    Document   : index
    Created on : 05-Mar-2015, 22:32:51
    Author     : Cathal
--%>

<%@page import="java.lang.NumberFormatException"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" isThreadSafe="true" %>
<%@ page errorPage="errorPage.jsp" %>
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
        <%!
            String[] risks =
            {
                "Injections",
                "Broken Authentication and Session Management",
                "Cross-Site Scripting (XSS)",
                "Insecure Direct Object References",
                "Security Misconfiguration",
                "Sensitive Data Exposure",
                "Missing Function Level Access Control",
                "Cross-Site Request Forgery (CSRF)",
                "Using Components with Known Vulnerabilities",
                "Unvalidated Redirects and Forwards"
            };
        %>

        <%
            String risk = request.getParameter("searchRisk");
            System.out.println("The risk is: " + risk);

            // if risk is not null and doesn't contain a number
            if (risk != null)
            {
                if (risk.matches(".*\\d.*"))
                {
                    throw new NumberFormatException();
                }
                else
                {
                    // now check to see if what was entered is on of the risks
                    for (String str : risks)
                    {
                        if (str.trim().compareToIgnoreCase(risk) == 0)
                        {
                            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchRiskServlet");
                            dispatcher.forward(request, response);

                        }
                    }
                }
            }
        %>
        <div class="container">
            <div class="navbar" role="navigation">
                <a class="navbar-brand" href="/OWASPInfoApp">OWASP Information App</a>
                <div class="navbar-inner">
                    <div class="navbar-header pull-right">
                        <form class="navbar-form inline" action="" method="POST" role="search">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div id="the-basics" class="input-group">
                                        <input type="text" class="form-control typeahead" name ="searchRisk" placeholder="Search for a risk">
                                        <span class="input-group-btn">
                                            <input id="searchbtn" class="btn btn-default" type="submit">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Select A Risk From the Dropdown</h3>
                </div>
                <div class="panel-body">
                    <div class ="form-group">
                        <form class="form-inline" action="selectRiskServlet" method="POST" name="risksForm">
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
                            <input type="submit" name="Next" class="btn btn-default">
                        </form>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">
                        <h3 class="panel-title">Features Provided</h3>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Feature</th>
                                    <th>File Location</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">GET Servlet</th>
                                    <td>GetRisk1Servlet.java - Line 22</td>
                                <tr>
                                    <th scope="row">POST Servlet</th>
                                    <td>selectRiskServlet.java - Line 22</td>
                                </tr>
                                <tr>
                                    <th scope="row">POST Servlet</th>
                                    <td>searchRiskServlet.java - Line 22</td>
                                </tr>
                                <tr>
                                    <th scope="row">JSP Page</th>
                                    <td>10+ jsp Files Used (E.g index.jsp)</td>
                                </tr>
                                <tr>
                                    <th scope="row">JSP Error Page</th>
                                    <td>errorPage.jsp - Included in all jsp pages. (Line 9 of index.jsp)</td>
                                </tr>
                                <tr>
                                    <th scope="row">How to Cause an Error</th>
                                    <td>Enter a Number into the SearchBox, creates error page for entering a number
                                        Lines 60-104 in index.jsp</td>
                                </tr>
                                <tr>
                                    <th scope="row">JSP Declaration Element</th>
                                    <td>index.jsp - Line 43, index.jsp - Line 60-84</td>
                                </tr>
                                <tr>
                                    <th scope="row">JSP Expression Element</th>
                                    <td>A2.jsp - Line 23 - Used To Include CSS Libraries</td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">GET Servlet</h3>
                            </div>
                            <div class="panel-body">
                                I used a GET Servlet request to retrieve the A1.html file.
                                If the user selects or searches for Injections.
                                This is sent as a POST request to the selectRiskServlet or searchRiskServlet
                                then redirected to the A1.jsp page which will make a GETrequest to the GetRisk1Servlet.
                                This will then retrieve the A1.html file. This is only done to demonstrate a GET Servlet request.
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">POST Servlet</h3>
                            </div>
                            <div class="panel-body">
                                When a user selects or searches any other risk apart from risk 1,injections.
                                The users selection is sent to the selectRiskServlet or searchRiskServlet.
                                Based on what was selected, the servlet will choose the corresponding JSP page to return and display.
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">JSP Page</h3>
                            </div>
                            <div class="panel-body">
                                I used primarily all JSP Pages. Each Risk has a corresponding
                                jsp page. The main welcome page itself is a jsp page. Each jsp page
                                has a jsp directive to handle errors.
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">JSP Error Page</h3>
                            </div>
                            <div class="panel-body">
                                I used errorPage.jsp to handle errors. This is declared
                                in each of the jsp pages that I used. It is triggered in my application
                                when you enter a number in the search box.
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">How to Cause an Error</h3>
                            </div>
                            <div class="panel-body">
                                To cause a handled error in my application. Enter an integer
                                into the search bar and search. This will trigger an error
                                and you will have to press back to return to the welcome page. If you now search
                                for an error and begin typing, it will display the closest match to what you are typing.
                                This feature is thanks to a library called typeahead.

                                <a href="https://twitter.github.io/typeahead.js/">Library Used</a>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">JSP Declaration Element</h3>
                            </div>
                            <div class="panel-body">
                                I used  JSP Declaration element this within the index.jsp to declare
                                a String array of risks. I then use this array later
                                on when handling search queries in lines 60-84. I also used it within A2.jsp
                                to declare a function used to include some CSS libaries.
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">JSP Expression Element</h3>
                            </div>
                            <div class="panel-body">
                                I used a JSP Expresion element in A2.jsp. I used here
                                to call a method I declared within an JSP Declaration Element.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="typeahead.js"></script>
    <script src="the-basics.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
</body>
</html>

