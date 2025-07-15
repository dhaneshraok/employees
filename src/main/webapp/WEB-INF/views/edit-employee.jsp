<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: #ffffffdd;
            max-width: 520px;
            width: 100%;
            padding: 35px 40px;
            border-radius: 12px;
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(10px);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
            font-weight: 700;
            font-size: 1.8rem;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 18px;
        }

        td {
            vertical-align: middle;
            padding: 6px 10px;
            font-weight: 600;
            color: #444;
            width: 35%;
            text-align: right;
            user-select: none;
        }

        td + td {
            width: 65%;
        }

        form input[type="text"],
        form input[type="number"],
        form input[type="email"] {
            width: 100%;
            padding: 11px 14px;
            font-size: 1rem;
            border: 1.8px solid #ccc;
            border-radius: 8px;
            transition: border-color 0.3s ease;
            font-weight: 500;
            color: #222;
        }

        form input[type="text"]:focus,
        form input[type="number"]:focus,
        form input[type="email"]:focus {
            border-color: #2575fc;
            outline: none;
            box-shadow: 0 0 6px #2575fcaa;
        }

        input[type="submit"] {
            background-color: #2575fc;
            color: #fff;
            border: none;
            padding: 14px 0;
            width: 100%;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 8px;
            margin-top: 35px;
            font-weight: 700;
            letter-spacing: 0.05em;
            transition: background-color 0.3s ease;
            box-shadow: 0 6px 12px #2575fc88;
        }

        input[type="submit"]:hover {
            background-color: #1a52c8;
            box-shadow: 0 8px 18px #1a52c888;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Edit Employee</h2>
    <form:form action="/update-employee" modelAttribute="employee" method="post">
        <table>
            <tr>
                <td>Employee ID:</td>
                <td><form:input path="empId" readonly="true" required="required" /></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><form:input path="firstName" required="required" /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="lastName" required="required" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" type="email" required="required" /></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><form:input path="phoneNumber" required="required" /></td>
            </tr>
            <tr>
                <td>Job Title:</td>
                <td><form:input path="jobTitle" required="required" /></td>
            </tr>
            <tr>
                <td>Department:</td>
                <td><form:input path="department" required="required" /></td>
            </tr>
            <tr>
                <td>Salary:</td>
                <td><form:input path="salary" type="number" required="required" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" required="required" /></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><form:input path="gender" required="required" /></td>
            </tr>
        </table>
        <input type="submit" value="Update Employee" />
    </form:form>
</div>

</body>
</html>
