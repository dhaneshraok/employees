package com.example.employees.service;

import com.example.employees.dao.EmployeeDao;
import com.example.employees.model.EmployeeModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
public class EmployeeService implements IEmployeeService {
    private final List<EmployeeModel> employeeModelList = new ArrayList<>();

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public void addEmployee(EmployeeModel employeeModel) {
        employeeDao.save(employeeModel);
    }

    @Override
        public List<EmployeeModel> displayAllEmployees() {
            return employeeDao.findAll();
        }

    @Override
    public void updateEmployee(EmployeeModel employeeModel) {
        Optional<EmployeeModel> optionalEmployee = employeeDao.findById(employeeModel.getEmpId());

        if (optionalEmployee.isPresent()) {
            EmployeeModel existingEmployee = optionalEmployee.get();

            // Update only the fields you want to allow editing
            existingEmployee.setFirstName(employeeModel.getFirstName());
            existingEmployee.setLastName(employeeModel.getLastName());
            existingEmployee.setEmail(employeeModel.getEmail());
            existingEmployee.setPhoneNumber(employeeModel.getPhoneNumber());
            existingEmployee.setJobTitle(employeeModel.getJobTitle());
            existingEmployee.setDepartment(employeeModel.getDepartment());
            existingEmployee.setSalary(employeeModel.getSalary());
            existingEmployee.setAddress(employeeModel.getAddress());
            existingEmployee.setGender(employeeModel.getGender());

            employeeDao.save(existingEmployee);
        } else {
            System.out.println("Employee with ID " + employeeModel.getEmpId() + " not found.");
        }
    }

    @Override
    public void updateSalary(int id, double salary) {
        try {
            boolean found = false;
            for (EmployeeModel item : employeeModelList) {
                if (item.getEmpId() == id) {
                    item.setSalary(salary);
                    found = true;
                    break;
                }
            }
            if (!found) {
                throw new EmployeeNotFoundException("Employee with ID " + id + " not found.");
            }
        } catch (EmployeeNotFoundException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }

    @Override
    public int totalNumberOfEmployees() {
        return employeeModelList.size();
    }

    @Override
    public void deleteEmployee(int id) {
        Optional<EmployeeModel> optionalEmployee = getEmployeeById(id);
        optionalEmployee.ifPresent(employeeModel -> employeeDao.delete(employeeModel));
    }

    @Override
    public Optional<EmployeeModel> getEmployeeById(int id) {
        return  employeeDao.findById(id);

    }

    @Override
    public void demonstrateObjectMethods() {
        EmployeeModel emp1 = new EmployeeModel();
        emp1.setEmpId(1001);
        emp1.setFirstName("John");
        emp1.setLastName("Doe");
        emp1.setEmail("john@example.com");



        EmployeeModel emp2 = new EmployeeModel();
        emp2.setEmpId(1001);

        System.out.println("getClass: " + emp1.getClass());
        System.out.println("hashCode: " + emp1.hashCode());
        System.out.println("equals: " + emp1.equals(emp2));
    }

    @Override
    public void demonstrateStringUsage() {
        String str = "Hello";
        str.concat(" World");
        System.out.println("String (immutable): " + str);

        StringBuffer sb = new StringBuffer("Hello");
        sb.append(" World");
        System.out.println("StringBuffer (mutable, thread-safe): " + sb);

        StringBuilder sbld = new StringBuilder("Hello");
        sbld.append(" World");
        System.out.println("StringBuilder (mutable, not thread-safe): " + sbld);
    }
}
