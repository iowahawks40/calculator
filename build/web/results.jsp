<%-- 
    Document   : results
    Created on : Feb 12, 2016, 2:10:03 PM
    Author     : zhart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Calculation Results </title>
    </head>
    
    <%
            Double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
            Double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
            Double preTaxDeduct = Double.parseDouble (request.getParameter("preTaxDeduct"));
            Double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
            
        
        %>
    
    <body>
        <h1> Salary Info </h1>
        
    </body>
</html>
