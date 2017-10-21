<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String createdDate = request.getParameter("createdDate");
	String supplierName = request.getParameter("supplierName");
	String supplierNumber = request.getParameter("supplierNumber");
	
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO mashroom.supplier_master (Supplier_First_Name, Supplier_Last_Name, Supplier_contact_person, Supplier_contact_person_Mobile_NO, Created_Date) VALUES (?, ?, ?, ?, ?)");
		preparedStatement.setString(1, firstname);
		preparedStatement.setString(2, lastname);
		preparedStatement.setString(3, supplierName);
		preparedStatement.setString(4, supplierNumber);
		preparedStatement.setString(5, createdDate);
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		if(count > 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("supplier.jsp");
			dispatcher.forward(request, response);
		} else {
			throw new SQLException("Record not inserted !");
		}
	} catch (Exception e) {
		connection.close();
		throw e;
	}
%>