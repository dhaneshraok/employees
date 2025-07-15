package com.example.employees;

import com.example.employees.model.EmployeeModel;
import com.example.employees.service.EmployeeService;
import com.example.employees.service.MultiThreading;
import com.example.employees.service.MyFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.*;
import java.util.stream.Collectors;

@SpringBootApplication
public class EmployeesApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(EmployeesApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(EmployeesApplication.class, args);
	}
}

