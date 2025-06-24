<%-- 
    Document   : highest_outcome
    Created on : 12 May 2025, 6:04:41 PM
    Author     : khuts
--%>

<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Highest Outcome Page</title>
    </head>
    <body>
        <h1>Highest Paid Employee Found</h1>
        <%
            Employee emp = (Employee)request.getAttribute("employee");
            Long id = emp.getId();
            String department = emp.getDepartment();
            Double salary = emp.getSalary();
        %>
        <table border="1">
            <th>Employee ID</th>
            <th>Department</th>
            <th>Salary</th>
            <tr>
                <td><%=id%></td>
                <td><%=department%></td>
                <td><%=salary%></td>
            </tr>
        </table>
            <ul> 
                <li><a href="manager_menu.html">Manager menu</a></li>
                <li><a href="menu.html">Home menu</a></li>
            </ul>
    </body>
</html>
