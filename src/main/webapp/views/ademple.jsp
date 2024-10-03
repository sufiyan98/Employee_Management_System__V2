<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Leave</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

*{
    padding: 0;
    margin: 0;
    text-decoration: none;
    list-style: none;
    box-sizing: border-box;
    }
    
    body{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    background-color: #32312f;
    }
    
    nav{
    background:#0082e6;
    height: 80px;
    width: 100%;
    }
    
    label.logo{
    color: white;
    font-size: 35px;
    line-height: 80px;
    padding: 0 50px;
    font-weight: bold;
    }
    
    nav ul{
    float: right;
    margin-right: 20px;
    }
    
    nav ul li{
    display: inline-block;
    line-height: 80px;
    margin:0 5px;
    }
    
    nav ul li a{
    color: white;
    font-size: 16px;
    text-transform: uppercase;
    }
    
    a.active, a:hover{
        background:#1b9bff;
        transition: .5s;
    }
    
    tablecontainer{
        padding: 0 10%;
        margin: 40px auto 0;
    }
    
    .heading{
        font-size: 40px;
        text-align: center;
        color: #f1f1f1;
        margin-bottom: 40px;
        font-weight:550;
    
    }
    
    .table{
        width: 100%;
        border-collapse: collapse;
    
    }
    
    .table thead{
        background-color: #ee2828;
        
    }
    
    .table thead tr th{
        font-size: 14px;
        font-weight: 600;
        letter-spacing: 0.35px;
        color: #ffffff;
        opacity: 1;
        padding: 12px;
        vertical-align: top;
        text-align:center;
        border: 1px solid #dee2e685;
    }
    
    .table tbody tr td{
        font-size: 14px;
        letter-spacing: 0.35px;
        font-weight: normal;
        color: #f1f1f1;
        background-color: #3c3f44;
        padding: 8px;
        text-align: center;
        border: 1px solid #dee2e685;
    
    }
    
    .table .textopen{
        font-size: 14px;
        font-weight: bold;
        letter-spacing: 0.35px;
        color: #ff1046;
    }
    
    
    .table tbody tr td .btn{
        width: 70px;
        text-decoration: none;
        line-height: 35px;
        display: block;
        background-color: #1b9bff;
        display: inline-block;
        font-weight: medium;
        color: #ffffff;
        text-align: center;
        vertical-align: middle;
        user-select: none;
        border: 1px solid transparent;
        font-size: 14px;
        opacity: 1;
        padding:2px;
    }
</style>

</head>
<body>
<nav>
        <label class="logo">Virtusa</label>
        <ul>
            <li><a href="adminhome" class="active">Home</a></li>
            <li><a href="regist">Add Employee</a></li>
            <li><a href="sal">Add Salary</a></li>
            <li><a href="tim">Add leave</a></li>
            <li><a href="alld">View Employee</a></li>
            <li><a href="vss">View Salary</a></li>
            <li><a href="vat">View leave</a></li>
            <li><a href="avt">View time</a></li>
            <li><a href="alld">Data</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="adminlogout">Logout</a></li>
        </ul>
    </nav>

    <div class="tablecontainer">
        <h1 class="heading">View Leave</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Emp ID</th>
                    <th>Email</th>
                    <th>Reason</th>
                    <th>Status</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var = "l" items="${kk}">
                    <tr>
                        <td>${l.id }</td>
                        <td>${l.email }</td>
                        <td>${l.reason }</td>
                        <td class="textopen">${l.status }</td>
                        <td><a href="dellea?id=${l.id}" class="btn">delete</a></td>
                        <td><a href="editlea?id=${l.id}" class="btn">edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
            </table>
    </div>
</body>
</html>