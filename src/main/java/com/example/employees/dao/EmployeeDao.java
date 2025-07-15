package com.example.employees.dao;

import com.example.employees.model.EmployeeModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeDao  extends JpaRepository<EmployeeModel,Integer> {
}
