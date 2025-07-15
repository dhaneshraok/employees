package com.example.employees.service;

import com.example.employees.model.EmployeeModel;

import java.util.List;
import java.util.Optional;

public interface IEmployeeService {
    void addEmployee(EmployeeModel employeeModel);
    List<EmployeeModel> displayAllEmployees();
    void updateEmployee(EmployeeModel employeeModel);
    void updateSalary(int id, double salary);
    int totalNumberOfEmployees();
    void deleteEmployee(int id);
    Optional<EmployeeModel> getEmployeeById(int id);
    void demonstrateObjectMethods();
    void demonstrateStringUsage();
}
