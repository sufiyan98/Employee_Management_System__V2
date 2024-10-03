<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Time </title>
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
}

/* div.header{
    background:#0082e6;
    height: 80px;
    width: 100%;
    text-align: center;
    padding-top: 18px;
} */


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

.welcome{
    text-align: center;
    color: #0082e6;
}

section{
    position: relative;
    width: 100%;
    height: 100vh;
    display: flex;
}

section .imgBx{
    position: relative;
    width: 50%;
    height: 100%;
}

section .imgBx:before{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(225deg,#e91e63,#03a9f4);
    z-index: 1;
    mix-blend-mode: screen;
}

section .imgBx img{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

section .contentBx{
    display: flex;
    width: 50%;
    height: 100%;
    align-items: center;
    justify-content: center;
}

.dropdown{
    padding: 8px 12px;
    border: 1px solid #03a9f4;
    border-radius: 8px;
    outline: none;
    color: #333333;
    background: #eef8ff;
}

section .contentBx .formBx{
    width: 50%;

}

section .contentBx .formBx h2{
    color: #1b9bff;
    font-weight: 600;
    font-size: 1.5em;
    text-transform: uppercase;
    margin-bottom: 20px;
    border-bottom: 4px solid #ff4584;
    display: inline-block;
    letter-spacing: 1px;
}

section .contentBx .formBx .inputBx{
    margin-bottom: 20px;
}
section .contentBx .formBx .inputBx span{
    font-size: 16px;
    margin-bottom: 5px;
    display: inline-block;
    color: #607db8;
    font-weight: 300;
    font-size: 16px;
    letter-spacing: 1px;
}

section .contentBx .formBx .inputBx input{
    width: 100%;
    padding: 10px 20px;
    outline: none;
    font-weight: 400;
    border: 1px solid #607d8b;
    font-size: 16px;
    letter-spacing: 1px;
    background: transparent;
    border-radius: 30px;
}



section .contentBx .formBx .inputBx input[type="submit"]{
    background: #03a9f4;
    color: #fff;
    outline: none;
    font-weight: 500;
    cursor: pointer;
}

section .contentBx .formBx .inputBx input[type="date"]{
    text-transform: uppercase;
}

section .contentBx .formBx .inputBx input[type="submit"]:hover{
    background-color:#0082e6;
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

    <section>
        <div class="imgBx">
            <img src="" alt="...">
        </div>
        <div class="contentBx">
            <div class="formBx">
                <h2>Edit Time</h2>
                <form action="sati" method="post">
                    <div class="inputBx">
                        <!-- <span>Emp ID</span> -->
                        <input type="text" name="id" value="${id}" hidden="true">
                    </div>

                    <div class="inputBx">
                        <span>Employee email</span>
                        <input type="text" name=""  value="${email}" name="email">
                    </div>

                    <div class="inputBx">
                        <span>Date</span>
                        <input type="date" value="${date}" name="date">
                    </div>
                    
                    <div class="inputBx">
                        <span>Hours</span>
                        <input type="number" name="hours" value="${hours}">
                    </div>
                    
                    <div class="inputBx">
                        <span>Description</span>
                        <input type="text" name="description" value="${description}">
                    </div>
                    
                    <div class="inputBx">
                        <span>Status</span>
                        <select class="dropdown" name="status">
                          <option value="${status}">options</option>
                          <option value="Request">Request</option>
                          <option value="Pending">Pending</option>
                          <option value="Denied">Denied</option>
                          <option value="Approved">Approved</option>
                          </select>
                          </div>

                        <div class="inputBx">
                            <input type="submit" value="Submit">
                        </div>  

                </form>
            </div>
        </div>
    </section>
</body>
</html>