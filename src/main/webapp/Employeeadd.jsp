<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Add</title>
</head>

	<style>
body {
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

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>
</body>
<table>
	<center>
		<h1>FRESH LAWN MUSHROOM PVT.LTD</h1>
	</center>
</table>
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
	padding: 10px 60px 12px 60px;
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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0, 2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
	z-index: 999;
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
	<div>
		<form action="empsavedata.jsp">

			<table>
				<tr><td>Employee Add New Data</td></tr>
				<tr>
					<th>Employee_ID:</th>
					<th><input type="text" name="Employee_ID" value=""></th>
				</tr>
				<tr>
					<th>Employee_First_Name:</th>
					<th><input type="text" name="Employee_First_Name" value=""></th>
				</tr>
				<tr>
					<th>Employee_Last_Name:</th>
					<th><input type="text" name="Employee_Last_Name" value=""></th>
				</tr>



				<tr>
					<th>DOB:(yyyy-MM-DD)</th>
					<th><input type="date" name="DOB" value=""></th>
				</tr>
				<tr>
					<th>Employee_Correspondence_Address:</th>
					<th><input type="text" name="Employee_Correspondence_Address"
						value=""></th>
				</tr>
				<tr>
					<th>Employee_Permanent_Address:</th>
					<th><input type="text" name="Employee_Permanent_Address"
						value=""></th>
				</tr>
				<tr>
					<th>Email_ID:</th>
					<th><input type="text" name="Email_ID" value=""></th>
				</tr>
				<tr>
					<th>Mobile_NO.:</th>
					<th><input type="text" name="Mobile_NO" value=""></th>
				</tr>
				<tr>
					<th>Joining_Date:(yyyy-MM-DD)</th>
					<th><input type="date" name="Joining_Date" value=""></th>
				</tr>
				<tr>
					<th>Release_Date:(yyyy-MM-DD)</th>
					<th><input type="date" name="Release_Date" value=""></th>
				</tr>
				<tr>
					<th>Created_Date:(yyyy-MM-DD)</th>
					<th><input type="date" name="Created_Date" value=""></th>
				</tr>
				<tr>
					<th>Created_By:</th>
					<th><input type="text" name="Created_By" value=""></th>
				</tr>
				<tr>
					<th>User_Name:</th>
					<th><input type="text" name="User_Name" value=""></th>
				</tr>
				<tr>
					<th>PassWord:</th>
					<th><input type="text" name="PassWord" value=""></th>
				</tr>

				<a href="#+"></a>
				
				
				<tr>
					<td></td>
					<th><input type="submit" value="submit"><input
						type="reset" value="reset"></th>
				</tr>
			</table>
		</form>
	</div>
</body>
<footer>Copyright &copy; freshlawnmushroom.com</footer>
</body>
</html>