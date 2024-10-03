<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Welcome</title>
	<!-- bootstrap cdn -->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
	<!-- font awesome cdn -->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<!-- style.css -->
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<!-- jquery cdn -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<style>
		/*google font*/
@import url('https://fonts.googleapis.com/css?family=Poppins:400,700,800,900&display=swap');

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins',sans-serif;
}
.navbar{
	position: fixed;
	top: 0;
	z-index: 99999;
	padding:25px 0;
}
.navbar .logo{
	font-size: 1.5em;
	text-transform: uppercase;
	font-weight: 750;
	letter-spacing: 2px;
	margin-left:5%;
}
.navbar ul.nav{
	margin-right: 5%;
}
.navbar ul.nav li.active,
.navbar ul.nav li:hover{
	background:rgba(255, 255, 255, 0.5);
	color: #000;

}
.navbar ul.nav li a{
	color: #fff;
	font-size: 1em;
	font-weight: 500;
}
.navbar ul.nav li.active a,
.navbar ul.nav li:hover a{
	color: #000;
}

/*slider*/
#carouselExampleIndicators{
	position: relative;
	height: 100vh;
	width: 100%;
}
#carouselExampleIndicators .carousel-inner{
	position: relative;
	height: 100%;
	width: 100%;
	background: #000;
}
#carouselExampleIndicators .carousel-inner:before{
	position: absolute;
	content: '';
	background: rgba(0, 0, 0, 0.45);
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	z-index: 1;
}
#carouselExampleIndicators .carousel-inner .carousel-item{
	position: relative;
	height: 100%;
	width:100%;
	background: url('https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
	background-size: 100% 100%;
	background-position: center;
	background-attachment: fixed;
}
#carouselExampleIndicators .carousel-inner .carousel-item:nth-child(2){
	background: url('https://images.pexels.com/photos/256937/pexels-photo-256937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
	background-size: 100% 100%;
	background-position: center;
	background-attachment: fixed;
}
#carouselExampleIndicators .carousel-inner .carousel-item:nth-child(3){
	background: url('https://images.pexels.com/photos/1064162/pexels-photo-1064162.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
	background-size: 100% 100%;
	background-position: center;
	background-attachment: fixed;
}

#carouselExampleIndicators .carousel-inner .carousel-item .info{
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	height: auto;
	width: 100%;
	z-index: 1;
	text-align: center;
}
#carouselExampleIndicators .carousel-inner .carousel-item h1{
	height: auto;
	color: #fff;
	width: 100%;
	z-index: 1;
	text-align: center;
	font-size: 3em;
	font-weight: light;
}
#carouselExampleIndicators .carousel-inner .carousel-item p{
	height: auto;
	color: #ccc;
	width: 100%;
	z-index: 1;
	text-align: center;
	font-size: 1.2em;
	font-weight: 500;
}	
	</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 navbar">
				<a href="index.html" class="logo navbar-brand text-white offset-md-2">EMS</a>
				<ul class="nav">
					<li class="nav-item active"><a href="adminhome" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="regist" class="nav-link">Add Employee</a></li>
					<li class="nav-item"><a href="sal" class="nav-link">Add Salary</a></li>
					<li class="nav-item"><a href="tim" class="nav-link">Add Leave </a></li>
					<li class="nav-item"><a href="alld" class="nav-link">View Employee</a></li>
					<li class="nav-item"><a href="vss" class="nav-link">View Salary</a></li>
					<li class="nav-item"><a href="vat" class="nav-link">View Leave</a></li>
					<li class="nav-item"><a href="adminlogout" class="nav-link">Logout</a></li>
				</ul>
			</div>

			<!-- slider banner	 -->

			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			    	<div class="info">
			      		<h1>Employee Management System</h1>
			      		<p>Enterprise and Mangement Solutions.</p>
			      	</div>
			    </div>
			    <div class="carousel-item">
			    	<div class="info">
			      		<h1>Place where your expectations meet</h1>
			      		<p>Unlock new opportunities faster and reveal hidden resources with the right solutions in place.</p>
			      	</div>
			    </div>
			    <div class="carousel-item">
			    	<div class="info">
			      		<h1></h1>
			      		<p>Integrating ideas, Beyond and Above</p>
			      	</div>
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
	</div>



	<!-- scripts -->
	<!-- bootstrap javascript cdn -->
	<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>