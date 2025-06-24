<%-- 
    Document   : display_outcome
    Created on : 12 May 2025, 2:14:57 PM
    Author     : khuts
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Outcome Page</title>
    </head>
    <body>
        <h1>Display Outcome</h1>
        <%
            List<Employee> employees = (List<Employee>)request.getAttribute("employee");
            
        %>
        
        <p>
            Here is a list of employees:
        </p>
        <table border="1">
            <th>ID</th>
            <th>Department</th>
            <th>Salary</th>
        <%
            for(int i = 0; i < employees.size(); i++) {
                Employee employee = employees.get(i);
                Long id = employee.getId();
                String department = employee.getDepartment();
                Double salary = employee.getSalary();
                
        %>
        
        
        
            <tr>
                <td><%=id%></td>
                <td><%=department%></td>
                <td><%=salary%></td>
            </tr>
        
        
        <%
            }
        %>
        </table>
        <ul> 
            <li><a href="manager_menu.html">Manager menu</a></li>
            <li><a href="menu.html">Home menu</a></li>
        </ul>
    </body>
</html>
