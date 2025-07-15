<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            padding: 30px 20px;
            margin: 0;
        }

        .container {
            max-width: 1100px;
            margin: 0 auto;
            text-align: center;
        }

        h1 {
            margin-bottom: 30px;
            font-weight: 700;
            color: #222;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 10px;
            background: white;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
            border-radius: 12px;
            overflow: hidden;
        }

        thead tr {
            background-color: #007BFF;
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            font-size: 0.9rem;
        }

        th, td {
            padding: 15px 18px;
            text-align: center;
        }

        tbody tr {
            background-color: #fff;
            transition: background-color 0.3s ease;
            cursor: default;
        }

        tbody tr:hover {
            background-color: #f1f7ff;
        }

        tbody tr:nth-child(even) {
            background-color: #fafafa;
        }

        .btn {
            padding: 7px 15px;
            margin: 0 4px;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            font-size: 0.9rem;
            font-weight: 600;
            text-decoration: none;
            transition: background-color 0.25s ease;
            display: inline-block;
            user-select: none;
        }

        .btn-edit {
            background-color: #28a745;
        }
        .btn-edit:hover {
            background-color: #218838;
        }

        .btn-delete {
            background-color: #dc3545;
        }
        .btn-delete:hover {
            background-color: #bd2130;
        }

        .btn-back {
            display: inline-block;
            margin-top: 30px;
            background-color: #6c757d;
            font-size: 1rem;
            padding: 10px 25px;
        }
        .btn-back:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Employee List</h1>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Job Title</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employeeList}">
            <tr>
                <td>${employee.empId}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.email}</td>
                <td>${employee.phoneNumber}</td>
                <td>${employee.jobTitle}</td>
                <td>${employee.department}</td>
                <td>${employee.salary}</td>
                <td>
                    <a href="edit-employee/${employee.empId}" class="btn btn-edit">Edit</a>
                    <a href="delete-employee/${employee.empId}" class="btn btn-delete"
                       onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="/" class="btn btn-back">Back</a>
</div>
</body>
</html>
