<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Students</title>
    <style>
        /* Same styles as before */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            padding: 40px;
            margin: 0;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 30px;
        }

        table {
            border-collapse: collapse;
            width: 85%;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        th {
            background: linear-gradient(to right, #667eea, #764ba2);
            color: #fff;
            padding: 15px;
            font-size: 16px;
            text-transform: uppercase;
        }

        td {
            padding: 14px;
            color: #333;
            font-size: 15px;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
            cursor: default;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 25px;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #1abc9c;
        }

        .btn {
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            display: inline-block;
            margin-right: 5px;
        }

        .edit-btn {
            background-color: #27ae60;
            color: #fff;
        }

        .delete-btn {
            background-color: #e74c3c;
            color: #fff;
        }

    </style>
</head>
<body>
    <h2>Student List</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Department</th>
            <th>Place</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.name}</td>
                <td>${student.dept}</td>
                <td>${student.place}</td>
                <td>${student.age}</td>
                <td>
                    <a href="edit?id=${student.id}" class="btn edit-btn">Edit</a>
                    <a href="delete?id=${student.id}" class="btn delete-btn"
                       onclick="return confirm('Are you sure to delete?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="login">Logout</a>
</body>
</html>
