 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Salary</title>
    <link rel="stylesheet" href="style.css" />
    
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
    
    /* background-color: #32312f; */
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

section .contentBx .formBx .inputBx input[type="submit"]:hover{
    background-color:#0082e6;
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

    <section>
      <div class="imgBx">
        <img src="https://cdn.pixabay.com/photo/2021/11/08/20/00/money-6780010_960_720.png" alt="salary_img" >
      </div>
      <div class="contentBx">
        <div class="formBx">
          <h2>Salary</h2>
          <form action="savesa" method="post">
            <div class="inputBx">
              <span>Employee email</span>
              <input type="text" name="email" />
            </div>
            <div class="inputBx">
              <span>Month</span>
              <select class="dropdown" name="month">
                <option value="Months">Select an option</option>
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
            </div>
            <div class="inputBx">
                <span>Year</span>
                <input type="text" name="year" />
              </div>
              <div class="inputBx">
                <span>Amount</span>
                <input type="text" name="amount" />
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

<%-- 
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

</div>

<h2>Add Salary 9505007755</h2>


<form action="savesa" method ="post">
Enter Employee's Email<input type="text" name=email>
Select Month<select name="month">
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
 Enter Year<input type="text" name="year">
 Enter Amount<input type="text" name="amount">
 <input type ="submit" value="Add">


</form>
</body>
</html> --%>