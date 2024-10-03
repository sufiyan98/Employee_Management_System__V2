<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add  e-time</title>
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
    padding: 0 20px;
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
    /* background: linear-gradient(225deg,#e91e63,#03a9f4); */
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
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    background: #eef8ff;
}

section .contentBx .formBx{
    width: 50%;

}

textarea{
    border-radius: 5px;
    outline: none;
}

textarea.input{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
section .contentBx .formBx .inputBx input[type="date"]{text-transform: uppercase;"}
section .contentBx .formBx .inputBx input[type="submit"]:hover{
    background-color:#0082e6;
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

    <section>
        <div class="imgBx">
            <img src="images/time.png" alt="time_img" />
        </div>

        <div class="contentBx">
            <div class="formBx">
                <h2>Add time</h2>
                <form action="savetime" method="post">
                    
                     
                        <input type="text" name="email" value="${email}" hidden="true" />
                   
                    <div class="inputBx">
                        <span>Date</span>
                        <input type="date" name="date" >
                    </div>
                    <div class="inputBx">
                        <span>Hours</span>
                        <input type="text" name="hours">
                    </div>
                    <div class="inputBx">
                        <span>Description</span>
                        <!-- <input type="text" name="reason" /> -->
                        <textarea name="description" id="" cols="43" rows="4"></textarea>
                    </div>

                    <div class="inputBx">
                        <span>Status:</span>
                        <select class="dropdown" name="status">
                            <option value="Months">options</option>
                            <option value="Request">Request</option>
                        </select>
                    </div>
                    <div class="inputBx">
                        <input type="submit" value="Submit">

                    </div>
                </form>
            </div>
        </div>
    </section>

</body></html>