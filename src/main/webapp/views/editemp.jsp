<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
    list-style: none;
    box-sizing: border-box;
  }
  body{
    /* background: #fec107; */
    /* padding: 0 10px; */
    background: linear-gradient(225deg,#FFD400,#FFEA61);
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


  .wrapper{
    max-width: 500px;
    width: 100%;
    background: #fff;
    margin: 50px auto;
    box-shadow: 2px 2px 4px rgba(0,0,0,0.125);
    padding: 30px;
  }
  
  .wrapper .title{
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 25px;
    color: #fec107;
    text-transform: uppercase;
    text-align: center;
  }
  
  .wrapper .form{
    width: 100%;
  }
  
  .wrapper .form .inputfield{
    margin-bottom: 15px;
    display: flex;
    align-items: center;
  }
  
  .wrapper .form .inputfield label{
     width: 200px;
     color: #757575;
     margin-right: 10px;
    font-size: 14px;
  }
  
  .wrapper .form .inputfield .input,
  .wrapper .form .inputfield .textarea{
    width: 100%;
    outline: none;
    border: 1px solid #d5dbd9;
    font-size: 15px;
    padding: 8px 10px;
    border-radius: 3px;
    transition: all 0.3s ease;
  }
  
  .wrapper .form .inputfield .textarea{
    width: 100%;
    height: 125px;
    resize: none;
  }
  
  .wrapper .form .inputfield .custom_select{
    position: relative;
    width: 100%;
    height: 37px;
  }
  
  .wrapper .form .inputfield .custom_select:before{
    content: "";
    position: absolute;
    top: 12px;
    right: 10px;
    border: 8px solid;
    border-color: #d5dbd9 transparent transparent transparent;
    pointer-events: none;
  }
  
  .wrapper .form .inputfield .custom_select select{
    -webkit-appearance: none;
    -moz-appearance:   none;
    appearance:        none;
    outline: none;
    width: 100%;
    height: 100%;
    border: 0px;
    padding: 8px 10px;
    font-size: 15px;
    border: 1px solid #d5dbd9;
    border-radius: 3px;
  }
  
  
  .wrapper .form .inputfield .input:focus,
  .wrapper .form .inputfield .textarea:focus,
  .wrapper .form .inputfield .custom_select select:focus{
    border: 1px solid #fec107;
  }
  
  .wrapper .form .inputfield p{
     font-size: 14px;
     color: #757575;
  }
  .wrapper .form .inputfield .check{
    width: 15px;
    height: 15px;
    position: relative;
    display: block;
    cursor: pointer;
  }
  .wrapper .form .inputfield .check input[type="checkbox"]{
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
  }
  .wrapper .form .inputfield .check .checkmark{
    width: 15px;
    height: 15px;
    border: 1px solid #fec107;
    display: block;
    position: relative;
  }
  .wrapper .form .inputfield .check .checkmark:before{
    content: "";
    position: absolute;
    top: 1px;
    left: 2px;
    width: 5px;
    height: 2px;
    border: 2px solid;
    border-color: transparent transparent #fff #fff;
    transform: rotate(-45deg);
    display: none;
  }
  .wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark{
    background: #fec107;
  }
  
  .wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark:before{
    display: block;
  }
  
  .wrapper .form .inputfield .btn{
    width: 100%;
     padding: 8px 10px;
    font-size: 15px; 
    border: 0px;
    background:  #fec107;
    color: #fff;
    cursor: pointer;
    border-radius: 3px;
    outline: none;
   
  }
  
  .wrapper .form .inputfield .btn:hover{
    background: #ffd658;
  }
  
  .wrapper .form .inputfield:last-child{
    margin-bottom: 0;
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

    <div class="wrapper">
        <div class="title">
          Employee Details
        </div>
        <div class="form">
            <form action ="sed" method="post">
            <div class="inputfield">
                <!-- <label>First Name</label> -->
                <input type="text" class="input" value="${id}" hidden="true">
             </div>
            
           <div class="inputfield">
              <label>First Name</label>
              <input type="text" class="input" value="${fName}"    name="fName">
           </div>  
            <div class="inputfield">
              <label>Last Name</label>
              <input type="text" class="input" value="${lName}"  name="lName">
           </div>  
           <div class="inputfield">
              <label>Date Of Birth</label>
              <input type="date" class="input" value="${dob}"  name="dob">
           </div>  
           <div class="inputfield">
               <label>Gender</label>
               <div class="custom_select">
                   <select   name="gender">
                       <option value="${gender}">Select</option>
                       <option value="male">Male</option>
                       <option value="female">Female</option>
                       <option value="female">Prefer not to say</option>
                    </select>
                </div>
            </div> 
            <div class="inputfield">
                <label>Father's Name</label>
                <input type="text" class="input" value="${faName}"  name="faName">
             </div> 
            <div class="inputfield">
              <label>Designation</label>
              <input type="text" class="input" value="${designation}"  name="designation">
            </div> 
            <div class="inputfield">
                <label>Current Address</label>
                 <input type="text" class="input" value="${cd}"   name="cd">
             </div> 
             <div class="inputfield">
                <label>Permanent Address</label>
                <input type=" text" class="input " value="${pd}"  name="pd">
             </div> 
           <div class="inputfield">
            <label>Email Address</label>
            <input type="text" class="input" value="${email}"  name="email">
         </div> 
          <div class="inputfield">
              <label>Passowrd</label>
              <input type="text" class="input" value="${password}"  name="password">
           </div> 
               <div class="inputfield">
                 <input type="submit" value="Save" class="btn">
               </div>
               </form>
        </div>
        
    </div>
</body>
</html>