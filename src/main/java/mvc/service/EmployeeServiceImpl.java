package mvc.service;

import mvc.dao.EmployeeDAO;
import mvc.entity.Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    @Transactional
    public List<Employees> getAllEmployees() {
        return employeeDAO.getAllEmployees();
    }

    @Override
    @Transactional
    public void setEmployee(Employees employee) {

        employeeDAO.setEmployee(employee);
    }

    @Override
    @Transactional
    public Employees getEmployee(int id) {
        return employeeDAO.getEmployee(id);
    }
}

