<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String Customer_Gen_ID = request.getParameter("empId");
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"delete from mashroom.customer_master where Customer_Gen_ID=?");

		int empId = Integer.parseInt(Customer_Gen_ID);

		preparedStatement.setInt(1, empId);		
		int count = preparedStatement.executeUpdate();
		connection.close();
		if (count > 0) {
%>
<jsp:forward page="Customer.jsp"></jsp:forward>
<%
	} else {
%>
<jsp:forward page="Customer.jsp"></jsp:forward>
<%
	}
	} catch (Exception e) {
		out.print(e);
	}
%>