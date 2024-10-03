<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration sample</title>
    
<script type="text/javascript">
    function validate() {
        let a = document.forms["myform"]["fName"].value;
        if (a == "") {
            alert("Field cannot be empty");
            return false;
        }
        let b = document.forms["myform"]["lName"].value;
        if (b == "") {
            alert("Field cannot be empty");
            return false;
        }
        let c = document.forms["myform"]["dob"].value;
        if (c == "") {
            alert("Field cannot be empty");
            return false;
        }
        let d = document.forms["myform"]["gender"].value;
        if (d == "") {
            alert("Field cannot be empty");
            return false;
        }
        let e = document.forms["myform"]["faName"].value;
        if (e == "") {
            alert("Field cannot be empty");
            return false;
        }
        let f = document.forms["myform"]["designation"].value;
        if (f == "") {
            alert("Field cannot be empty");
            return false;
        }
        let g = document.forms["myform"]["cd"].value;
        if (g == "") {
            alert("Field cannot be empty");
            return false;
        }
        let h = document.forms["myform"]["pd"].value;
        if (h == "") {
            alert("Field cannot be empty");
            return false;
        }
        let i = document.forms["myform"]["email"].value;
        if (i == "") {
            alert("Field cannot be empty");
            return false;
        }
        let j = document.forms["myform"]["password"].value;
        if (j == "") {
            alert("Field cannot be empty");
            return false;
        }


    }
</script>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            
        }
        
        body{
            color: #fff;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
            /* background:linear-gradient(135deg,#05073a,#dc0606ca); */
            /* background: linear-gradient(120deg,#09C6F9,#045DE9); */
            background: linear-gradient(120deg,#000000,#303133);
            padding: 10px;
        
        }

        .container{
            max-width: 500px;
            width: 100%;
            padding: 25px 30px;
            padding-bottom: 100px;
            border-radius: 25px;
            background: transparent;
        }

        .container .heading{
            font-size: 30px;
            font-weight: 500;
            position:relative;
            text-align: center;
            padding: 10px 0 20px 0;
            color: #fff;
            margin-top: 10px;
        }

        .container .heading::before{
            content: '';
            position: absolute;
            margin-bottom: 6px;
            height: 3px;
            left: 0;
            bottom: 0;
            width: 100%;
            background:linear-gradient(135deg,#71b7e6,#9b5b);
        }

        table tr th .btn {
            padding: 0.6em 2em;
            border: none;
            outline: none;
            color: rgb(255, 255, 255);
            background: #111;
            cursor: pointer;
            position: relative;
            font-size:16px;
            z-index: 0;
            border-radius: 10px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            left: 100%;
            margin-top: 18px;
            
          }
          
          .btn:before {
            content: "";
            background: linear-gradient(
              45deg,
              #ff0000,
              #ff7300,
              #fffb00,
              #48ff00,
              #00ffd5,
              #002bff,
              #7a00ff,
              #ff00c8,
              #ff0000
            );
            position: absolute;
            top: -2px;
            left: -2px;
            background-size: 400%;
            z-index: -1;
            filter: blur(5px);
            -webkit-filter: blur(5px);
            width: calc(100% + 4px);
            height: calc(100% + 4px);
            animation: glowing-button-85 20s linear infinite;
            transition: opacity 0.3s ease-in-out;
            border-radius: 10px;
          }
          
          @keyframes btn {
            0% {
              background-position: 0 0;
            }
            50% {
              background-position: 400% 0;
            }
            100% {
              background-position: 0 0;
            }
          }
          
          .btn:after {
            z-index: -1;
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            background: #222;
            left: 0;
            top: 0;
            border-radius: 10px;
            
          }
          
           table tr th{
            text-align: left;
            font-weight: inherit;
            padding-top:5px;
          }

          table tr td input{
            margin-top: 10px;
            margin-left:25%;
            padding:5px 0 5px 0  ;
            display: inline-flex;
            border-radius: 8px ;
            outline:none;
            font-size: 16px;
          }
          
         table tr td input[type="date"]{
          text-transform: uppercase;
          width:218px;
          text-decoration: none;
          
          } 
         table tr td input[type="date"]:in-range::-webkit-datetime-edit-year-field,input[type='date']:in-range::-webkit-datetime-edit-month-field,input[type='date']:in-range::-webkit-datetime-edit-day-field,input[type='date']:in-range::-webkit-datetime-edit-text{
          color: transparent;          
          }  
       
        
        .back {
        	text-decoration: none;
        	left: 60px;
        	padding-left: 80%;
        	color:#fff;
        }
        
       
        

    </style>
</head>
<body>
        <div class="container">
            <div class="heading">Registration</div>
            <div class="carddetails">
            <form action="reg" method="post" name="myform" onsubmit="return validate()"> 
                <table >
                    <tr>
                        <th>First Name</th>
                        <td><input type="text" id="fName" name="fName" />
                            <c:forEach var="l" items="${l1 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Last Name</th>
                        <td><input type="text" id="lName" name="lName" />
                            <c:forEach var="l" items="${l2 }">
                                ${l}
                            </c:forEach>
                        </td>
                    </tr>

                    <tr>
                        <th>Date of Birth</th>
                        <td><input type="date" id="dob" name="dob" />
                            <c:forEach var="l" items="${l3 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td><input type="text" id="gender" name="gender" />
                            <c:forEach var="l" items="${l4 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Father's Name</th>
                        <td><input type="text" id="faName" name="faName" />
                            <c:forEach var="l" items="${l5 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Designation</th>
                        <td><input type="text" id="designation" name="designation" />
                            <c:forEach var="l" items="${l6 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Current Address</th>
                        <td><input type="text" id="cd" name="cd" />
                            <c:forEach var="l" items="${l7 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Permanent Address</th>
                        <td><input type="text" id="pd" name="pd" />
                            <c:forEach var="l" items="${l8 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Email</th>
                        <td><input type="text" id="email" name="email" />
                            <c:forEach var="l" items="${l9 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <tr>
                        <th>Password</th>
                        <td><input type="password" id="password" name="password" />
                            <c:forEach var="l" items="${l10 }">
                                ${l}
                            </c:forEach>
                        </td>

                    </tr>
                    <!-- <tr>
                        <th><input type="submit" class="btn" value="Register"></th>
                    </tr> -->
                    <tr>
                        <th><button class="btn" role="button">Register</button>  </th>
                    </tr>
                </table>
            
                 <a class="back" href="adminhome">Back</a>
                           
            </form>
        </div>
        </div>

</body>

</html> 