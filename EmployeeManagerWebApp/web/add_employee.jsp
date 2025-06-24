<%-- 
    Document   : add_employee
    Created on : 12 May 2025, 11:44:31 AM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee Page</title>
    </head>
    <body>
        <h1>Add Employee</h1>
        <p>
            Add an employee below:
        </p>
        <form action="AddEmployeeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Employee ID</td>
                    <td><input type="text" name="id" required="" /></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>
                        <select name="department">
                            <option value="ICT">ICT</option>
                            <option value="Humanities">Humanities</option>
                            <option value="Law">Law</option>
                        </select>
                    </td>

                </tr>
                <tr>
                    <td>Salary</td>
                    <td><input type="text" name="salary" required="" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="Add" required="" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
