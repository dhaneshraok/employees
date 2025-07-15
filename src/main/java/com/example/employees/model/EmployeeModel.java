package com.example.employees.model;

import com.example.employees.service.MyFunction;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class EmployeeModel {

    @Id
    private int empId;

    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private String jobTitle;
    private String department;
    private double salary;
    private String address;
    private String gender;

    // Getters and Setters (or use Lombok if preferred)





    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (!(obj instanceof EmployeeModel)) return false;

        EmployeeModel other = (EmployeeModel) obj;
        return this.empId == other.empId;
    }

    @Override
    public int hashCode() {
        return empId;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "ID=" + empId +
                ", name='" + firstName + " " + lastName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }


}
