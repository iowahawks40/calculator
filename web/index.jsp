<%-- 
    Document   : index
    Created on : Feb 12, 2016, 1:56:02 PM
    Author     : zhart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%
 
        %>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zach's Simple Calculator</title>
        <link rel="stylesheet" type="text/css" href="csspage.css" />
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <form name="calculatorForm" action="results.jsp" method="post">
        
        <table> 
            <tbody>
    <tr>
        <td>Hours Worked:</td>
        <td><input type="number" name="hoursWorked" value="" size="50" required ></td>
        
    </tr>
      
    <tr>
        <td>Hourly Pay:</td>
        <td><input type="number" name="hourlyPay" value="" size="50" required ></td>
        
    </tr>
    
    <tr>
        <td>Pre-tax Deduct:</td>
        <td><input type="number" name="preTaxDeduct" value="" size="50" required ></td>
        
    </tr>
    
    <tr>
        <td>Post-tax Deduct:</td>
        <td><input type="number" name="postTaxDeduct" value="" size="50" required ></td>
        
    </tr>
            </tbody>
        </table>
        
        <input type="reset" value="Clear" id="clear">
        <input type="submit" value="Submit" id="submit">
        
        
        
        </form>
        
        
        
    </body>
</html>
