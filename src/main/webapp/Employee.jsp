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
body {
	background-color: lightblue;
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

	<center>
		<h1>FRESH LAWN MUSHROOM PVT.LTD</h1>
	</center>

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

	<li><a href="#Employee">Employee-ID</a></li>

</ul>
<body>
<div class="icon-bar">
  
  
  <form action="empsearch.jsp">
  	<input type="text" class="textbox search_box" name="searchInput" placeholder="Search..." />
  	<input type="submit" style="display: none;" />
  </form>
  <a href="contactus.jsp"><i class="fa fa-envelope"></i></a> 
  <a href="globe.jsp"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-trash"></i></a> 
  <a href="#"><i class="fa fa-facebook"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a> 
</div>
	<table>
		<tr>

			<th>Employee-ID</th>
			<th>Employee First name</th>
			<th>Employee Last name</th>
			<th>DOB</th>
			<th>Employee Correspondence Address</th>
			<th>Employee Permanent Address</th>
			<th>Email ID</th>
			<th>Mobile NO</th>
			<th>Joining-Date</th>
			<th>Release Date</th>
			<th>Created Date</th>
			<th>Created By</th>
			<th>User_Name</th>
			<th>PassWord</th>
			<td><a href="Employeeadd.jsp">ADD New</a></td>
		</tr>
		<%
			try {
				System.out.println("start");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root","password");
				//here sonoo is database name, root is username and password  
				PreparedStatement stmt = con.prepareStatement("select * from employee_master ");
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
		%>

		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>

			<td><%=rs.getString(3)%></td>

			<td><%=rs.getString(4)%></td>

			<td><%=rs.getString(5)%></td>

			<td><%=rs.getString(6)%></td>

			<td><%=rs.getString(7)%></td>

			<td><%=rs.getInt(8)%></td>

			<td><%=rs.getDate(9)%></td>

			<td><%=rs.getDate(10)%></td>

			<td><%=rs.getDate(11)%></td>

			<td><%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
			<td><a href="delete.jsp?empId=<%=rs.getInt(1)%>">Delete</a></td>
			<td><a href="employeeupdate.jsp?empId=<%=rs.getInt(1)%>">Update</a></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>

	<footer>Copyright &copy; freshlawnmushroom.com</footer>

</body>
</html>