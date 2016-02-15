<%-- 
    Document   : results
    Created on : Feb 12, 2016, 2:10:03 PM
    Author     : zhart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Calculation Results </title>
        <link rel="stylesheet" type="text/css" href="csspage.css" />
    </head>
    
    <%
            Double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
            Double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
            Double preTaxDeduct = Double.parseDouble (request.getParameter("preTaxDeduct"));
            Double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
            
            Double grossPay = hoursWorked * hourlyPay;
            
            Double otHours = 0.00;
            Double otPayRate = hourlyPay * 1.5;
            Double taxablePay = grossPay - preTaxDeduct;
            Double taxAmount = taxablePay * .22;
            Double postTaxPay = taxablePay - taxAmount;
            Double netPay = postTaxPay - postTaxDeduct;
            Double regularHours = 40.00;
            
            
          if(hoursWorked > 40) {
                   regularHours=40.00;
                   otHours = hoursWorked - 40;
                   otPayRate = hourlyPay * 1.5;
                   double otPay = otHours * otPayRate;
                   double regularPay = regularHours * hourlyPay;
                   grossPay = regularPay + otPay;
          }
          else {
                   grossPay = hoursWorked * hourlyPay;
                           }
          
          if (grossPay < 500) {
              
              taxAmount = taxablePay * .18;
          }
          else {
              taxAmount = taxablePay * .22;
          }
      
        %>
    
    <body>
        <h1> Salary Info </h1>
        <hr></hr>
        <table border="1">
            <tbody>
                <tr>
                    <td> Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                    
                <tr>
                    <td> Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr> 
                
                <tr>
                    <td> # Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                
                <tr>
                    <td> Overtime Hourly Rate:</td>
                    <td><%= otPayRate %></td>
                </tr>
                
                <tr>
                    <td> Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td> Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td> Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td> Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td> Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td> Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                
            </tbody>
        
        
        
        
    </body>

