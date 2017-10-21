<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
    * {
    box-sizing: border-box;
}

body {
  margin: 0;
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
    width: 35%;
}

/* Middle column */
.column.middle {
    width: 0%;
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
  body{
   background-color: lightgreen;
   }
div.container {
    width: 100%;
    border: 5px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}


.centre {
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

h1 {
    color: yellow;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</body>

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
</style>
<ul>
<li></li>
<li></li>

  
  <li><a href="temp.jsp">Home</a></li>
  <li><a href="Aboutus.jsp">About us</a></li>
  


  <li><a href="Whatwedo.jsp">What WE Do</a></li>



  <li><a href="Carrier.jsp">Carrier</a></li>
   
 
  <li><a href="contactus.jsp">Contact us</a></li>
   </ul>
</ul>
<body>


 <body>
<div class="row">
  <div class="column side">
    <h2></h2>
    <p><form class="form-horizontal" action="Contactsave.jsp">
<fieldset>

<!-- Form Name -->
<h4>Contact Us<h4>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>  
  <div class="col-md-4">
  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- EMAIL-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Email*</label>
  <div class="col-md-4">
    <input id="" name="" type="password" placeholder="" class="form-control input-md">
    
  </div>
</div>
<!-- cONTACT-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Contact*</label>
  <div class="col-md-4">
    <input id="" name="" type="password" placeholder="" class="form-control input-md">
    
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="state">state</label>
  <div class="col-md-4">
    <select id="state" name="state" class="form-control">
      <option value="1">BIHAR</option>
      <option value="2">JHARKHAND</option>
      <option value="2">OTHERS</option>
    </select>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="ChooseFile"></label>
  <div class="col-md-4">
    <input id="ChooseFile" name="ChooseFile" class="input-file" type="file">
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Message</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="textarea" name="textarea"></textarea>
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <input type="submit"> 
    <button id="button2id" name="button2id" class="btn btn-success">Reset</button>
  </div>
</div>

</fieldset>
</form>
    
  </div>
  
  <div class="column side">
    <h2>Address</h2>
    <table>
    <tr>
    <th> Factory Address</th>
    <td>Fresh Lawn Mushroom</br>Jhuapatti</br>P.O- Jogni Parsa</br>P.S-Bheldhi</br>Dist.-Saran</br>State-Bihar<br>9523595107</td>
    </tr>
    <th>Office Address</th>
    <td>House No. 12</br>Road No.08<br>Indrapuri</br>Patna</br>Bihar<br>8877994524</td>
    </table>
  </div>
</div>





<footer>Copyright &copy; freshlawnmushroom.com</footer>

</body>
</html>