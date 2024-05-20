<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
   // Don't create if not existing
    String user = (String) session.getAttribute("user1");
    if (user == null) {
        response.sendRedirect("Login.html"); // Redirect to login if not logged in
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome, <%= user %>!</title>
    <style>
        /* Optional: Style your menu bar here */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Add hover effects, etc. as needed */
        
    </style>
</head>
<body>
    <h1>Welcome, <%= user %>!</h1>

   <jsp:include page="menu.jsp" />
    <p>Welcome To policy Management system here we will add policies,View policies,update policies,delete policies.....!!!</p>
</body>
</html>
