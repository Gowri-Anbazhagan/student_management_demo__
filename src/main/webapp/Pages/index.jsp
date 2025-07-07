<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f9f9f9, #dbe6f6);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 400px;
            animation: slideIn 1.2s ease;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            font-size: 28px;
            color: #34495e;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            align-self: flex-start;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
            font-size: 15px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            box-shadow: inset 0 2px 5px rgba(0,0,0,0.05);
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border: 1px solid #7f8c8d;
            outline: none;
        }

        button {
            padding: 14px;
            width: 100%;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #fff;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            font-weight: 600;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: background 0.4s ease;
        }

        button:hover {
            background: linear-gradient(to right, #00f2fe, #4facfe);
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #1abc9c;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Student Registration Form</h1>
        <form action="submit" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="dept">Department:</label>
            <input type="text" name="dept" id="dept" required>

            <label for="place">Place:</label>
            <input type="text" name="place" id="place" required>

            <label for="age">Age:</label>
            <input type="number" name="age" id="age" required>

            <button type="submit">Submit</button>
        </form>
        <a href="view">View All Students</a>
    </div>
</body>
</html>
