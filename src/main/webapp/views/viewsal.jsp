<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Salary</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,700,800,900&display=swap');
*{
    padding: 0;
    margin: 0;
    text-decoration: none;
    list-style: none;
    box-sizing: border-box;
    }
    
    body{
    font-family: 'Poppins',sans-serif;
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
    text-transform: capitalize;
  
    }
    
    a.active, a:hover{
        background:#1b9bff;
        transition: .5s;
        list-style: none;
        text-decoration: none;
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
        font-weight: 550;
    
    }
    
     label.logo {
            color: white;
            font-size: 35px;
            line-height: 80px;
            padding: 0 30px;
            font-weight: bold;
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
        text-align:center;
        vertical-align: top;
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
        justify-content: center;
    
    }
    
    .table tbody tr td .btn{
        width: 70px;
        text-decoration: none;
        line-height: 25px;
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
        border-radius: 4px;
    }
    </style>

</head>
<body>
 <nav>
        <label class="logo">EMS</label>
        <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="regist">Add Employee</a></li>
            <li><a href="sal">Add Salary</a></li>
            <li><a href="tim">Add leave</a></li>
            <li><a href="alld">View Employee</a></li>
            <li><a href="vss">View Salary</a></li>
            <li><a href="vt">View leave</a></li>
            <li><a href="avt">View time</a></li>
            <li><a href="alld">Data</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="adminlogout">Logout</a></li>
        </ul>
    </nav>

    <div class="tablecontainer">
        <h1 class="heading">View Salary</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Emp ID</th>
                    <th>Email</th>
                    <th>Month</th>
                    <th>Year</th>
                    <th>Amount</th>
                    <th></th>
                    <th></th>
                    
                </tr>
            </thead>
            <c:forEach var = "l" items="${hh}">
            <tbody>
                <tr>
                	<td>${l.id }</td>
                    <td>${l.email }</td>
                    <td>${l.month }</td>
                    <td>${l.year }</td>
                    <td>${l.amount }</td>
                    <td><a href="delsal?id=${l.id}" class="btn">Delete</a></td>
                    <td><a href="editsal?id=${l.id}" class="btn">Edit</a></td>
                    </tr>
            </tbody>
		</c:forEach>
	</table>
	</div>
</body>
</html>