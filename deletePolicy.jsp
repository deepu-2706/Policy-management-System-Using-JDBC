<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Policy</title>
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
            background-color: #dc3545; /* Red color */
            color: white;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #c82333; /* Darker shade of red on hover */
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
    </style>
</head>
<body>
    <h2>Delete Policy</h2>
    
    <form action="Deletepolicyservlet" method="post">
        Policy ID: <input type="text" name="policy_id" placeholder="Enter Policy ID to delete"><br>
        
        <input type="submit" value="Delete Policy">
    </form>
</body>
</html>
