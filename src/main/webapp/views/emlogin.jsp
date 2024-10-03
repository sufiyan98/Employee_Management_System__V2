<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
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
    background: linear-gradient(120deg,#b621fe,#045DE9);
}

nav{
    background:transparent;
    height: 80px;
    width: 100%;
}

label.logo{
    color: white;
    font-size: 35px;
    line-height: 80px;
    padding: 0 50px;
    font-weight: bold;
    float: left;
    margin-left: 43%;
}

label.logo:hover{
	color: #045de9;
	cursor:pointer;
	transition:.1s ease-in;
}

nav ul{
    float: left;
    margin-right: 20px;
    margin-top: 4px;
}

nav ul li{
    display: inline-block;
    line-height: 80px;
    margin:0 5px;
}

nav ul li a{
    color: white;
    font-size: 14px;
    text-transform: uppercase;
}

a.active, a:hover{
    background:#1b9bff;
    transition: .5s;
}

.center{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    height: 350px;
    background: whitesmoke;
    border-radius: 10px;
}

.center h1{
    text-align: center;
    padding: 0 0 17px 0;
    border-bottom: 1px solid silver;
}

.center form{
    padding: 0 40px;
    box-sizing: border-box;
}

form .textfield{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
}

.textfield input{
    width: 100%;
    padding:0 5px;
    height: 40px;
    font-size: 16px;
    border: none;
    background:none;
    outline: none;
}

.textfield label{
    position: absolute;
    top: 50%;
    left: 5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    transition: .5s;
    pointer-events: none;
}


.textfield span::before{
    content: '';
    position: absolute;
    top: 40px;
    left: 0;
    width: 0%;
    height: 2px;
    background: #2691d9;

}

.textfield input:focus ~ label,
.textfield input:valid ~ label{
    top: -5px;
    color: #2691d9;

}

.textfield input:focus ~ span::before,
.textfield input:valid ~ span::before{
    width: 100%;

}

.pass{
    margin: -5px 0 20px 5px;
    color: #a6a6a6;
    cursor: pointer;
}

h3{
		font-weight: lighter;
		font-size:14px;
		color:red;
}


.pass:hover{
    text-decoration: underline;
}

input[type="submit"]{
    width: 100%;
    height: 50px;
    border: 1px solid ;
    background: #2691d9;
    border-radius: 25px;
    color: #e9f4fb;
    font-weight: 700;
    cursor: pointer;
    outline: none;
}

a{ 
	text-decoration: none;
	left:50px;
	color:gray;
	
}

</style>

</head>
<body>
  <nav>
        <label class="logo">EMS</label>
        <ul>
          <!--   <li><a href="#" class="active">Home</a></li>
            <li><a href="loginnn">Employee Login</a></li>
            <li><a href="logi">Admin Login</a></li>
            <li><a href="#">About Us</a></li> -->
        </ul>
    </nav>

<div class="center">
        <h1>Login</h1>
        <form action="emlo" method="post">
            <div class="textfield">
                <input type="text"  name="email">
                <span></span>
                <label>Username</label>
            </div>
            <div class="textfield">
                <input type="password" name="password">
                <span></span>
                <label>Password</label>
                <h3>${r}</h3>
            </div>
            <div class="pass">Forgot Password? </div>
            <input type="submit" value="Login">
            <a href="adminlogout">Back</a>
        </form>
    </div>
</body></html>