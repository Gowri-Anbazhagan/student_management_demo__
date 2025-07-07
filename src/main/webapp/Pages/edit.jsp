<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f9f9f9, #dbe6f6);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .edit-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #34495e;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 600;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            box-shadow: inset 0 2px 5px rgba(0,0,0,0.05);
        }

        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            border: none;
            color: #fff;
            border-radius: 10px;
            font-weight: 600;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background: linear-gradient(to right, #00f2fe, #4facfe);
        }
    </style>
</head>
<body>
    <div class="edit-container">
        <h2>Edit Student</h2>
        <form action="update" method="post">
            <input type="hidden" name="id" value="${student.id}">
            
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" value="${student.name}" required>

            <label for="dept">Department:</label>
            <input type="text" name="dept" id="dept" value="${student.dept}" required>

            <label for="place">Place:</label>
            <input type="text" name="place" id="place" value="${student.place}" required>

            <label for="age">Age:</label>
            <input type="number" name="age" id="age" value="${student.age}" required>

            <button type="submit">Update Student</button>
        </form>
    </div>
</body>
</html>
