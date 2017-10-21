<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css"/>
<title>Fresh Lawn Mushroom</title> 

<style>
    
  body{
   background-image:url("background.jpg")
   
   }
.container {
    width: 800px;
    margin: auto;
}


header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
.center {
    margin: auto;
    width: 65%;
    border: 5px solid #73AD22;
    text-align: left;
}

.right {
    margin: auto;
    width: 35%;
    border: 5px solid #73AD22;
}

.left {
    margin: auto;
    width: 35%;
    border: 5px solid #73AD22;
}
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
<body>
h1 {
    color: yellow;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}

</style>

<center><h1>FRESH LAWN MUSHROOM PVT.LTD</h1></center>
			
		</body>	
	<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding:10px 60px 12px 60px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0,2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
    z-index:999;
}
* {
    box-sizing: border-box;
}



/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Create three unequal columns that floats next to each other */
.column {
    float: left;
    padding: 10px;
}

/* Left and right column */
.column.side {
    width: 25%;
}

/* Middle column */
.column.middle {
    width: 40%;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .column.side, .column.middle {
        width: 100%;
    }
}
</style>

<style>
body {margin:0;}

.icon-bar {
    width: 30%;
    background-color: #555;
    overflow: auto;
}

.icon-bar a {
    float: left;
    width: 10%;
    text-align: center;
    padding: 2px 0;
    transition: all 0.3s ease;
    color: white;
    font-size: 20px;
}

.icon-bar a:hover {
    background-color: #000;
}

.active {
    background-color: #4CAF50 !important;
}
.search_box {
    background:url("search.png");
    background-size:20px 20px;
    background-repeat:no-repeat;
    background-position: right;
    padding-right: 20px !important;
    padding-top: 2px !important;
    padding-bottom: 2px !important;
    padding-left: 5px !important;
    float: left;
}
</style>

<body>

<div class="icon-bar">
  
  
  <form action="search.jsp">
  	<input type="text" class="textbox search_box" name="searchInput" placeholder="Search..." />
  	<input type="submit" style="display: none;" />
  </form>
  <a href="contactus.jsp"><i class="fa fa-envelope"></i></a> 
  <a href="globe.jsp"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-trash"></i></a> 
  <a href="#"><i class="fa fa-facebook"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a> 
</div>

</head>
</body>

<ul>
<li></li>
<li></li>
<li><a href="temp.jsp"><i class="fa fa-home"></i></a></li>

  <li><a href="Aboutus.jsp">About us</a></li>
  


  <li><a href="Whatwedo.jsp">What WE Do</a></li>



  <li><a href="Carrier.jsp">Carrier</a></li>
   
 
  <li><a href="contactus.jsp">Contact us</a></li>
   </ul>
<div class="column side">
    <h2>Login</h2>
    <form action="submit.jsp">
    <table>
<tr><th>UserName:</th><td><input type="text" name="username" value=""></td></tr>
<tr><th> PassWord:</th><td><input type="password" name="password" value=""></td></tr>
<tr><th><a href="forgetpassword.jsp">Forget Password</a></th><th><a href="Registration.jsp">Registration</a></th><tr>
<tr><td> </td><th><input type="submit" value="submit"><input type="reset" value="reset" ></th></tr>
</table>
</form>
  </div>
     
<div  align="left">
<jsp:include page="slider.jsp" />
</div>



<footer>Copyright &copy; freshlawnmushroom.com</footer>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.8.0/slick.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>
<script type="text/javascript" src="js/default.js"></script>

</body>
</html>