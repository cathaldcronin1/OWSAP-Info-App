<%--
    Document   : A1.jsp
    Date: 08/03/2015
    Author     : Cathal Cronin
    ID: 10131531
    Version: 1.0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%-- Make a GET request to retrieve the GetRisk1Servlet --%>
        <%
            String contextPath = request.getContextPath();
            response.sendRedirect(response.encodeRedirectURL(contextPath + "/GetRisk1Servlet"));
        %>
    </body>
</html>
