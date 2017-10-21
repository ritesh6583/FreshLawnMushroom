<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
 <style>
h2 {
    color: yellow;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
</style>

		<body>

<center><h2>FRESH LAWN MUSHROOM PVT.LTD</h2></center>
			
		</body>	

  <style>
div {
    background-color: lightgrey;
    width: 300px;
    border: 25px solid green;
    padding: 25px;
    margin: 25px;
}
</style>
<body>
<ul>
<li></li>
<li></li>
<li><a href="temp.jsp">Home</a></li>
  <li><a href="#About us">Registration</a></li>
 
   
  
  
</ul>
<center>
<div>
<form action="Registrationdata.jsp">

<table>
<tr><th>First name:</th><td><input type="text" name="firstname" value=""></td></tr>
<tr><th> Last name:</th><td><input type="text" name="lastname" value=""></td></tr>
<tr><th>gender </th><td><input type="radio" name="gender" value="male">male<input type="radio" name="gender" value="female">female<input type="radio" name="gender" value="other">other</td></tr>

<tr><th>UserName:</th><td><input type="text" name="UserName" value=""></td></tr>
<tr><th> PassWord:</th><td><input type="password" name="PassWord" value=""></td></tr>
<tr><th> DOB:</th><td><input type="text" name="DOB" value=""></td></tr>
<tr><td> </td><td></td></tr>
<tr><td> </td><td></td></tr>
<tr><th> language:</th><td><select name="language"> <option value="english" >english</option> <option value="hindi" >hindi</option></select></td></tr>
<tr><th>Remarks:</th><td><input type="text" name="Remarks" value=""></td></tr>

<tr><td> </td><td><input type="submit" value="submit"><input type="reset" value="reset" ></td></tr>
<tr><td> </td><td></td></tr>
		<%
			try {
				System.out.println("start");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root",
						"password");
				//here sonoo is database name, root is username and password  
				PreparedStatement stmt = con.prepareStatement("select * from registration ");
				ResultSet rs = stmt.executeQuery();
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

		

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
</table>
</form>
</div>
</center>



<footer>Copyright &copy; freshlawnmushroom.com</footer>
</body>
</html>