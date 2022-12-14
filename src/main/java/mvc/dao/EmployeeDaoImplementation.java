package mvc.dao;

import mvc.entity.Employees;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

//import javax.transaction.Transactional;
import java.util.List;

@Repository
public class EmployeeDaoImplementation implements EmployeeDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Employees> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        List<Employees> allEmployees = session.createQuery("from Employees", Employees.class)
                .getResultList();

        return allEmployees;
    }

    @Override
    public void setEmployee(Employees employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    public Employees getEmployee(int id) {
        Session session = sessionFactory.getCurrentSession();
        Employees employee = session.get(Employees.class, id);
        return employee;
    }


}
