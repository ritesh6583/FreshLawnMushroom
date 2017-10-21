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
<title>Insert title here</title>
</head>


<body>
<style>
    
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
    
}</style>
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
 h2 {
    color: yellow;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
</style>
<body>
<table>
<center><h2>FRESH LAWN MUSHROOM PVT.LTD</h2></center>
</table>			
		</body>	
		<ul>
<li></li>
<li></li>

  <li><form action="temp.jsp"><a href="ForgetPassword">ForgetPassword</a></form></li>
  
  
  </ul>
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
  
  <center>
  <form action="forgetpassword.jsp">
<div>
<table>
<tr><th>Register_Email:</th><td><input type="text" name="Register_Email" value=""></td></tr>
<tr><th>OR</th></tr>
<tr><th> Register_Mobile_NO:</th><td><input type="text" name="Register_Mobile_NO" value=""></td></tr>

<tr><td> </td><th><input type="submit" value="submit"><input type="reset" value="reset" ></th></tr>
<%
try {
	System.out.println("start");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12200526", "sql12200526", "ESqHyRTdks");
	//here sonoo is database name, root is username and password  
	PreparedStatement stmt = con.prepareStatement("select * from forgetpassWord");
	ResultSet rs = stmt.executeQuery();
	while (rs.next()) {
		out.print("<tr>");
		out.print("<td>" +rs.getString("Register_Email")+ "</td>");
		out.print("<td>" +rs.getString("Register_Mobile_NO")+ "</td>");
	
		out.print("<td></td>");
		out.print("</tr>");
	}
	System.out.println("done");
	con.close();
} catch (Exception e) {
	e.printStackTrace();
}

%>

</table>
</div>
</form>
</center>
</body>

<footer>Copyright &copy; freshlawnmushroom.com</footer>

</html>