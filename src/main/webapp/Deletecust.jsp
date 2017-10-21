<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String Customer_Gen_id = request.getParameter("Customer_Gen_id");
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"delete from mashroom.Customer_master where Customer_Geni-d=?");

		int Customer_id = Integer.parseInt(Customer_Gen_id);

		preparedStatement.setInt(1, Customer_id);		
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