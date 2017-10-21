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

</body>

<center><h1>FRESH LAWN MUSHROOM PVT.LTD</h1></center>
			
		</body>	
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

  <li><a href="#Customer">Customer-ID</a></li>
 
</ul>
<body>
<table>
<tr>
    <th>Customer Gen ID</th>
    
    <th>Customer First name</th>
    <th>Customer Last name</th>
    <th>Customer Contact Person</th>
    <th>Customer Contact Person Mobile</th>
    <th>Created-Date</th>
    <th>Customer Contact Delivery Addreess</th>
     <th><a href="custaddnew.jsp">ADD New</a></th>
  </tr>
<%
try {
	System.out.println("start");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12200526", "sql12200526", "ESqHyRTdks");
	//here sonoo is database name, root is username and password  
	PreparedStatement stmt = con.prepareStatement("select * from Customer_master");
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
			
			<td><a href="Customerdelete.jsp?empId=<%=rs.getInt(1)%>">Delete</a></td>
			<td><a href="Customerupdate.jsp?empId=<%=rs.getInt(1)%>">Update</a></td>

		</tr>
		
<% 		out.print("</tr>");
	}
	System.out.println("done");
	con.close();
} catch (Exception e) {
	e.printStackTrace();
}

%>
</table>
</body>
<footer>Copyright &copy; freshlawnmushroom.com</footer>

</body>
</html>