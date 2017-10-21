<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%  
String Customer_Gen_ID = request.getParameter("Customer_Gen_ID");
	String firstname = request.getParameter("Customer_First_Name");
	String lastname = request.getParameter("Customer_Last_Name");
	String createdDate = request.getParameter("Created_Date");
	String customerName = request.getParameter("Customer_Contact_Person");
	String customerNumber = request.getParameter("Customer_Contact_Person_Mobile");
	String customerDelivery = request.getParameter("Customer_Contact_Delivery_Adreess");

	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12200526", "sql12200526", "ESqHyRTdks");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"UPDATE  mashroom.customer_master set Customer_First_Name=?, Customer_Last_Name=?, Customer_contact_person=?, Customer_contact_person_Mobile_NO=?, Created_Date=?,Customer_Contact_Delivery_Adreess=?  WHERE Customer_Gen_ID=?");
		
		
		preparedStatement.setString(1, firstname);
		preparedStatement.setString(2, lastname);
		preparedStatement.setString(3, createdDate);
		preparedStatement.setString(4, customerName);
		preparedStatement.setString(5, customerNumber);
		preparedStatement.setString(6, customerDelivery);

		preparedStatement.setString(7, Customer_Gen_ID);
		int count = preparedStatement.executeUpdate();
		connection.close();
		if (count > 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Customer.jsp");
			dispatcher.forward(request, response);
		} else {
			throw new SQLException("Record not inserted !");
		}
	} catch (Exception e) {
		connection.close();
		throw e;
	}
%>