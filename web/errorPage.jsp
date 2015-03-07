<%--
    Document   : errorPage
    Created on : Mar 7, 2015, 6:56:14 PM
    Author     : cathal
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
