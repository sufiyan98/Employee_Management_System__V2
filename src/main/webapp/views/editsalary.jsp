<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h2{
text-align:center;
color:orange
}
.header{
            background-color: cornflowerblue;
            padding: 20px;
            text-align: center;
            color: aliceblue;
        }
.topnav{
            overflow: hidden;
            background-color: violet;
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
            background-color: crimson;
            color: black;
        }
	
	table.center {
  margin-left: auto; 
  margin-right: auto;
}

</style>

</head>
<body>
<div class="header">
        <h1>Welcome</h1>
    </div>
<div class="topnav">
        <a href="adminhome">Home</a>
        
        <a href="regist">Add Employee</a>
        <a href="sal">Add Salary</a>
        <a href="tim">Add leave</a>
        <a href="alld">View Employee</a>
        <a href="vss">View Salary</a>
        <a href="vat">View leave</a>
        <a href="avt">View time</a>
        <a href="alld">Data</a>
        <a href="#">About us</a>
        <a href="adminlogout">Logout</a>
    </div>
<div class="pic">
<h2>"Welcome to Virtusa Family  9505007755</h2>
<img src="images/joshh22.png" alt="kkkk" width="1500px" height="600px">

</div><body>
<form action ="savesall" method="post">

<input type ="number" name ="id" value="${id}">
<input type="text" name="email" value="${email}">

<select name="month">
    <option value="${month}">${month}</option>
  <option value="Months">options</option>
  <option value="january">January</option>
  <option value="february">February</option>
  <option value="march">March</option>
  <option value="april">April</option>
  <option value="may">May</option>
  <option value="june">June</option>
  <option value="july">July</option>
  <option value="august">August</option>
  <option value="september">September</option>
  <option value="october">October</option>
  <option value="november">November</option>
  <option value="december">December</option>
  </select>
  <input type="text" name="year" value="${year}">
  <input type="text" name="amount" value="${amount}">


<input type="submit" value="editsalary">
</form>
</body>
</html>