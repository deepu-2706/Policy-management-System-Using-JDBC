<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    // Don't create if not existing
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("Login.html"); // Redirect to login if not logged in
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome To Policy Management System</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }

        /* Navigation bar styling */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #007bff; /* Blue color */
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 20px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        li a:hover {
            background-color: #0056b3; /* Darker shade of blue on hover */
        }

        .logout {
            float: right;
        }

        .welcome {
            float: left;
            color: white;
            padding: 20px;
        }

        /* Login details styling */
        .login-details {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            width: 200px;
            margin-top: 20px; /* Adjust margin as needed */
        }

        .login-details h2 {
            margin-bottom: 10px;
        }

        .login-details table {
            width: 100%;
        }

        .login-details th,
        .login-details td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .login-details th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <ul>
        <li class="welcome">Welcome, <%= (user != null) ? user : "Guest" %>!</li>
        <li><a href="">Home</a></li>
        <li><a href="addPolicy.jsp">Add Policy</a></li>
        <li><a href="deletePolicy.jsp">Delete Policy</a></li>
        <li><a href="updatePolicy.jsp">Update Policy</a></li>
        <li><a href="viewpolicy.jsp">View Policy</a></li>
        <li class="logout"><a href="login.html">Logout</a></li>
    </ul>

    
</body>
</html>
