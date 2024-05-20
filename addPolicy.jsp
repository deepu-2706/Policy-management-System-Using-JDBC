<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Make policy</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        /* Form styling */
        form {
            width: 50%;
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form input[type="text"],
        form input[type="submit"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        form input[type="submit"] {
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        form ::-webkit-input-placeholder {
            color: #aaa;
        }

        form :-moz-placeholder { /* Firefox 18- */
            color: #aaa;
        }

        form ::-moz-placeholder {  /* Firefox 19+ */
            color: #aaa;
        }

        form :-ms-input-placeholder {
            color: #aaa;
        }

        /* Footer styling */
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <h2>Make Policy</h2>
    
    <form action="makePoliservlet" method="post">
        Name: <input type="text" name="name"><br>
        Description: <input type="text" name="description"><br>
        Coverage Amount: <input type="text" name="coverage_amount" placeholder="0.00"><br>
        Premium Amount: <input type="text" name="premium_amount" placeholder="0.00"><br>
        
        <input type="submit" value="Submit Policy">
    </form><br><br>
    
    <a href="welcome.jsp">WELCOME</a>
</body>
</html>
