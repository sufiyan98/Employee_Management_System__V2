<%-- <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>View Employee Time</title>
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
        border: 1px solid #dee2e685;
        text-align: center;
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
    }
</style>

</head>
<body>
  <nav>
        <label class="logo">Virtusa</label>
        <ul>
          <li><a href="hhhh" class="active">Home</a></li>
<li><a href="afl">Apply for Leave</a></li>
<li><a href="vs">View Leave</a></li>
<li><a href="at">Add Time</a></li>
<li><a href="vtt">View Time</a></li>
<li><a href="es">View Salary</a></li>
<li><a href="chpa">Change Password</a></li>
<li><a href="vpp">View Profile</a></li>
<li><a href="#">About Us</a></li>
<li><a href="logout">Logout</a></li>
        </ul>
    </nav>

    <div class="tablecontainer">
        <h1 class="heading">View Time</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Hours</th>
                    <th>Description</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="l" items="${hd}">
                    <tr>
                        <td>${l.email }</td>
                        <td>${l.date }</td>
                        <td>${l.hours }</td>
                        <td>${l.description }</td>
                        <td>${l.status }</td>
                    </tr>
                </c:forEach>
                </tbody>
                </table>
</body>
</html> --%>


<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>View Employee Time</title>
<style>
.header{
            background-color: cornflowerblue;
            padding: 20px;
            text-align: center;
            color: aliceblue;
        }
.topnav{
            overflow: hidden;
            background-color: orange;
        }

        .topnav a{
            float: left;
            display: flex;
            color:wheat;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .topnav a:hover{
            background-color: blue;
            color: black;
        }
   
   table.center {
  margin-left: auto; 
  margin-right: auto;
}

.content {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content thead tr {
  background-color: #1B1464;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content th,
.content td {
  padding: 12px 15px;
}

.content tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content tbody tr:last-of-type {
  border-bottom: 2px solid #1B1464;
}

.content tbody tr.r {
  font-weight: bold;
  color: #1B1464;
}

</style>

</head>
<body>
<div class="header">
        <h1>Welcome</h1>
    </div>
<div class="topnav">
        <a href="hhhh">Home</a>
        
        
        <a href="afl">Apply For Leave</a>
        <a href="vs">View Leave</a>
        <a href="at">Add Time</a>
        <a href="vtt">view Time</a>
        <a href="es">View salary</a>
        <a href="chpa">Change Password</a>
        <a href="#">About Us</a>
        <a href="vpp">View Profile</a>
        <a href="logout">Log Out</a>
    </div>
    <!-- <img src="images/Screenshot(103.png)"> -->
<table class="table table-striped" align="center">
  <thead class="thead-dark">
   <tr>
      
         <th>email</th>
         <th>date</th>
         <th>hours</th>
         <th>description</th>
         <th>status</th>
         
      </tr>
      </thead>
      <tbody>
   <c:forEach var = "l" items="${hd}">
      
      <tr>
         
         
      
      
      <td>${l.email }</td>
      
      
      <td>${l.date }</td>
      <td>${l.hours }</td>
      <td>${l.description }</td>
      <td>${l.status }</td>
      
      
      
      
      
      </tr>
      
      </c:forEach>
      </tbody>
   </table>

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Time</title>
    <style>
     * {
            padding: 0;
            margin: 0;
            text-decoration: none;
            list-style: none;
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: #32312f;
        }

        nav {
            background: #0082e6;
            height: 80px;
            width: 100%;
        }

        label.logo {
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
    text-decoration: none;
}

        .tablecontainer {
            padding: 0 10%;
            margin: 40px auto 0;
            
        }

        .heading {
            font-size: 40px;
            text-align: center;
            color: #f1f1f1;
            margin-bottom: 30px;
            font-weight: 550;

        }

        .table {
            width: 100%;
            border-collapse: collapse;
            

        }

        .table thead {
            background-color: #ee2828;

        }

        .table thead tr th {
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

        .table tbody tr td {
            font-size: 14px;
            letter-spacing: 0.35px;
            font-weight: normal;
            color: #f1f1f1;
            background-color: #3c3f44;
            padding: 8px;
            text-align: center;
            
            border: 1px solid #dee2e685;

        }

        .table .textopen {
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 0.35px;
            color: #ff1046;
        }


        .table tbody tr td .btn {
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
        }
    </style>
</head>

<body>
    <nav>
        <label class="logo">EMS</label>
        <ul>

            <li><a href="hhhh" class="active">Home</a></li>
            <li><a href="afl">Apply for Leave</a></li>
            <li><a href="vs">View Leave</a></li>
            <li><a href="at">Add Time</a></li>
            <li><a href="vtt">View Time</a></li>
            <li><a href="es">View Salary</a></li>
            <li><a href="chpa">Change Password</a></li>
            <li><a href="vpp">View Profile</a></li>
            <li><a href="vpp">About Us</a></li>
            <li><a href="logout">Logout</a></li>
        </ul>
    </nav>

    <div class="tablecontainer">
        <h1 class="heading">View Time</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Hours</th>
                    <th>Description</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="l" items="${hd}">
                    <tr>
                        <td>${l.email }</td>
                        <td>${l.date }</td>
                        <td>${l.hours }</td>
                        <td>${l.description }</td>
                        <td class="textopen">${l.status }</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</body>

</html>