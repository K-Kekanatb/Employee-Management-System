/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.entity.Employee;

/**
 *
 * @author khuts
 */
public class HighestPaidEmployeeServlet extends HttpServlet {

    

    @EJB EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String department = request.getParameter("department");
        Employee employee = (Employee) efl.highestPaidEmployeeInDepartment(department);
        
        request.setAttribute("employee", employee);
        
        RequestDispatcher rd = request.getRequestDispatcher("highest_outcome.jsp");
        rd.forward(request, response);
        
    }

    
    

}
