<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Search</title>

<body>
   <style> 
  body{
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

<table>
<center><h1>FRESH LAWN MUSHROOM PVT.LTD</h1></center>
</table>			
		
</style>	
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

  <li><a href="#employee">Employee-ID</a></li>
 


  <li><a href="Aboutus.jsp">About us</a></li>
  


  <li><a href="Whatwedo.jsp">What WE Do</a></li>



  <li><a href="Carrier.jsp">Carrier</a></li>
   
 
  <li><a href="contactus.jsp">Contact us</a></li>
   </ul>



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
  </tr>
<tr>
<%
try {
	System.out.println("start");
	String searchString = request.getParameter("searchInput");
	Connection connection = null;
	
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
	PreparedStatement preparedStatement = connection.prepareStatement(
			"SELECT * from  employee_master where "+
		    "Employee_ID like ? or "+
			"Employee_first_name like ? or "+
			"Employee_last_name like ? or "+
			"DOB like ? or "+
			"Employee_Correspondence_Address ? or " +
			"Employee_Permanent_Address ? or " +
			"Email_ID ? or " +
			"Mobile_No ? or " +
			"Joining_Date ? or " +
			"Release_Date like ? or "+
			"Created_Date like ? or "+
	        "Created_By like ? or "+
	        "User_Name like ? or "+
	        "PassWord like ? or " );
	 
	preparedStatement.setString(1,"%"+searchString+"%");
	preparedStatement.setString(2,"%"+searchString+"%");
	preparedStatement.setString(3,"%"+searchString+"%");
	preparedStatement.setString(4,"%"+searchString+"%");
	preparedStatement.setString(5,"%"+searchString+"%");
	preparedStatement.setString(6,"%"+searchString+"%");
	preparedStatement.setString(7,"%"+searchString+"%");
	preparedStatement.setString(8,"%"+searchString+"%");
	preparedStatement.setString(9,"%"+searchString+"%");
	preparedStatement.setString(10,"%"+searchString+"%");
	preparedStatement.setString(11,"%"+searchString+"%");
	preparedStatement.setString(12,"%"+searchString+"%");
	preparedStatement.setString(13,"%"+searchString+"%");
	preparedStatement.setString(14,"%"+searchString+"%");
	ResultSet rs = preparedStatement.executeQuery();
	while (rs.next()) {
%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
			<td><%=rs.getString(9)%></td>
			<td><%=rs.getString(10)%></td>
			<td><%=rs.getString(11)%></td>
			<td><%=rs.getString(12)%></td>
			<td><%=rs.getString(13)%></td>
			<td><%=rs.getString(14)%></td>
		</tr>
<%
	}
	System.out.println("done");
	connection.close();
} catch (Exception e) {
	e.printStackTrace();
}

%>

</table>
</body>
<footer>Copyright &copy; freshlawnmushroom.com</footer>
</html>