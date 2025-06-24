/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entity.Employee;

/**
 *
 * @author khuts
 */
@Stateless
public class EmployeeFacade extends AbstractFacade<Employee> implements EmployeeFacadeLocal {

    @PersistenceContext(unitName = "EmployeeManagerEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

       
    public EmployeeFacade() {
        super(Employee.class);
    }
    
    @RolesAllowed("secretary") 
    public void createEmployee(Employee employee){
        create(employee);
    }
    
    
    @RolesAllowed("manager") 
    public void removeEmployee(Employee employee){
        remove(employee);
    }

    @RolesAllowed("manager")
    @Override
    public List<Employee> findEmployeesInDepartment(String department) {
        String queryStr = "SELECT e FROM Employee e WHERE e.department = :department";
        Query query = em.createQuery(queryStr);
        query.setParameter("department", department);
    
        List<Employee> employees = (List<Employee>) query.getResultList();
        return employees;
    }

    @RolesAllowed("manager")
    @Override
    public Employee highestPaidEmployeeInDepartment(String department) {
    String queryStr = "SELECT e FROM Employee e " +
                      "WHERE e.department = :dept AND e.salary = (" +
                      "SELECT MAX(e2.salary) FROM Employee e2 WHERE e2.department = :dept)";
    
    Query query = em.createQuery(queryStr, Employee.class);
    query.setParameter("dept", department);
    
    List<Employee> results = query.getResultList();
    return results.isEmpty() ? null : results.get(0);
}


    
}
