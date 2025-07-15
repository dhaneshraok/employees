package com.example.employees.controller;

import com.example.employees.model.EmployeeModel;
import com.example.employees.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Optional;


@Controller
public class EmployeeController {

    @Autowired
    private IEmployeeService employeeService;


    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/add-employee")
    public String showAddForm(Model model) {
        model.addAttribute("employee", new EmployeeModel());
        return "add-employee";
    }
    @PostMapping("/save-employee")
    public String saveEmployee(@ModelAttribute("employee") EmployeeModel employee) {
        employeeService.addEmployee(employee);
        return "redirect:/employee-list";
    }

    @GetMapping("/employee-list")
    public String showAllEmployees(Model model) {
        List<EmployeeModel> list = employeeService.displayAllEmployees(); // or employeeDao.findAll()
        model.addAttribute("employeeList", list);
        return "employee-list";
    }

    @GetMapping("/delete-employee/{id}")
    public String deleteEmployee(@PathVariable("id") int id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employee-list";
    }

    @GetMapping("/edit-employee/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        Optional<EmployeeModel> employee = employeeService.getEmployeeById(id);
        if (employee.isPresent()) {
            model.addAttribute("employee", employee.get());
            return "edit-employee";
        } else {
            return "redirect:/employee-list";
        }
    }

    @PostMapping("/update-employee")
    public String updateEmployee(@ModelAttribute("employee") EmployeeModel employee){
        employeeService.updateEmployee(employee);
        return "redirect:/employee-list";
    }
}
