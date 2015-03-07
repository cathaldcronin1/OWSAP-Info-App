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
    </head>
    <body>
        <%
            String contextPath = request.getContextPath();
            response.sendRedirect(response.encodeRedirectURL(contextPath + "/GetRisk1Servlet"));
        %>
    </body>
</html>
