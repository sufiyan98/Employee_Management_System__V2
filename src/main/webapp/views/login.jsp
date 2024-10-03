<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style type="text/css">
	body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #434343;
}
.box{
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  text-align: center;
  outline:1px;
  border-radius:14px;
  background: transparent;
 
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  font-size:15px;
  text-transform:uppercase;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: #2ecc71;
}

a{
	text-decoration: none;
	font-size: 18px;
	color:#fff;
	justify-content: right;
	padding-left: 200px;
}
	

</style>
</head>
<body>
<form class="box" action="llo" method="post">
  <h1>Admin Login</h1>
  <input type="text" name="email" placeholder="email">
  <input type="password" name="password" placeholder="Password"><h3>${r}</h3>
  <input type="submit" name="" value="Login">
  <a href="hh">Back</a></p>
  
</form>
</body>
</html>