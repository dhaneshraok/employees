<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee Management System</title>
    <style>
        /* Reset some default margins/paddings */
        * {
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6B73FF 0%, #000DFF 100%);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            max-width: 450px;
            width: 100%;
        }

        h1 {
            font-weight: 700;
            margin-bottom: 30px;
            text-shadow: 1px 1px 5px rgba(0,0,0,0.4);
        }

        .menu {
            margin-top: 20px;
        }

        .menu a {
            display: inline-block;
            margin: 12px 15px;
            padding: 14px 30px;
            background-color: #00BFFF;
            color: white;
            font-weight: 600;
            text-decoration: none;
            border-radius: 50px;
            box-shadow: 0 4px 15px rgba(0,191,255,0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            font-size: 1.1rem;
        }

        .menu a:hover {
            background-color: #0091cc;
            box-shadow: 0 6px 20px rgba(0,145,204,0.6);
        }

        footer {
            margin-top: 40px;
            font-size: 0.9rem;
            color: #d0d0d0;
            text-shadow: 0 0 2px rgba(0,0,0,0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Employee Management System</h1>
        <div class="menu">
            <a href="/employee-list">View All Employees</a>
            <a href="/add-employee">Add New Employee</a>
        </div>
        <footer>
            <p>&copy; 2025 EmployeeApp Inc.</p>
        </footer>
    </div>
</body>
</html>
