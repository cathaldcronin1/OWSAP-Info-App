<%--
    Document   : errorPage.jsp
    Date: 08/03/2015
    Author     : Cathal Cronin
    ID: 10131531
    Version: 1.0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <font color="red">
            <%= exception.toString()%><br>
            </font>
        </h1>
        <%-- Print out thr stack trace of the exception that has occured --%>
        <%
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            exception.printStackTrace(pw);
            out.print(sw);
            sw.close();
            pw.close();
        %>
    </body>
</html>
