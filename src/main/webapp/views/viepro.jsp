<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
    
    <div align="center">
    <table>
   <tr><th>Email:</th><td>${email}</td></tr>
 <tr><th> First Name:</th><td>${fName}</td></tr>
 <tr><th>   Last Name:</th><td>${lName}</td></tr>
 <tr><th>   Date of Birth:</th><td>${dob}</td></tr>
  <tr><th> Gender:</th><td>${gender}</td></tr>
   <tr><th> Father Name:</th><td>${faName}</td></tr>
  <tr><th>  Designation:</th><td>${designation}</td></tr>
  <tr><th>  Current Address:</th><td>${cd}</td></tr>
<tr><th>  Permanent Address:</th><td>${pd}</td></tr>
    
    </table>
    
    
    
    
    
    </div>
    
    
    

</body>
</html> --%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <style>
    *{
    margin: 0;
    padding: 0;
}


body{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    color: #fff;
    
    background: rgb(4,4,4); 
background: linear-gradient(90deg, rgba(4,4,4,1) 0%, rgba(57,44,44,1) 47%, rgba(47,41,32,1) 100%);
}

.profile-card{
    width: 400px;
    margin: auto;
    background:rgb(70, 62, 62);
    box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.5);
    border-radius: 10px;
}

.image-container{
    position: relative;
   
}

i{
    color: #4b4fe2;
    margin-right: 16px;
}

img{
    width: 100%;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    height: 40vh;
    object-fit: cover;
}

.main-container{
    padding: 20px;
}

.title{
    position: absolute;
    left: 15px ;
    bottom: 0;
    padding-bottom: 15px;
    color: antiquewhite;
}

table{
    text-align: left;
}

td {
    padding-bottom: 10px;
    margin-top: 0;
    font-weight: lighter;
    padding-left: 25px;
    

}

th {
    margin-top: 0;
    padding-bottom: 10px;
    font-weight: medium;
}

a{
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    margin-left: 90%;
    
}

a:hover{
    color: #f4d2d3;
    font-size: 18px;
}
    </style>
</head>

<body>
    <div class="profile-card">
        <div class="image-container">
            <img src="https://about.gitlab.com/images/blogimages/ben-sweet-2LowviVHZ-E-unsplash.jpg" alt="">
            <div class="title">
                <h2>Details</h2>
            </div>
        </div>
        <div class="main-container">
            <table>
                <tr>
                    <th><i class="fa-solid fa-envelope"></i>Email</th>
                    <td>:${email}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-user"></i>First Name</th>
                    <td>: ${fName}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-user"></i>Last Name</th>
                    <td>: ${lName}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-cake-candles"></i>Date of Birth</th>
                    <td>: ${dob}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-venus-mars"></i>Gender</th>
                    <td>: ${gender}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-briefcase"></i>Designation</th>
                    <td>: ${designation}</td>
                </tr>
                <tr>
                    <th><i class="fa-regular fa-address-book"></i>Current Address</th>
                    <td>: ${cd}</td>
                </tr>
                <tr>
                    <th><i class="fa-solid fa-address-book"></i>Permanent Address</th>
                    <td>: ${pd}</td>
                </tr>
            </table>
            <tr><a href="hhhh">Back</a></tr>
        </div>
    </div>


</body>

</html>







