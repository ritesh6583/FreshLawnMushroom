<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%  

	String firstname = request.getParameter("Supplier_First_Name");
	String lastname = request.getParameter("Supplier_Last_Name");
	String createdDate = request.getParameter("Created_Date");
	String suplierName = request.getParameter("Supplier_Contact_Person");
	String supplierNumber = request.getParameter("Supplier_Contact_Person_Mobile");
	

	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"UPDATE  mashroom.supplier_master set  Supplier_Last_Name=?,Created_Date=?, Supplier_contact_person=?, Supplier_contact_person_Mobile=? WHERE Supplier_First_Name=?");
		
		
		
		preparedStatement.setString(1, lastname);
		preparedStatement.setString(2, createdDate);
		preparedStatement.setString(3, suplierName);
		preparedStatement.setString(4, supplierNumber);
		preparedStatement.setString(5, firstname);
		
		
		int count = preparedStatement.executeUpdate();
		connection.close();
		if (count > 0) {
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