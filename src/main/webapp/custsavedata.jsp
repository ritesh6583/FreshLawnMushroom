<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%  
try {
	String Customer_Gen_ID = request.getParameter("Customer_Gen_ID");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");

	String customerName = request.getParameter("Customer_Contact_Person");
	String customerNumber = request.getParameter("Customer_Contact_Person_Mobile");
	String createdDate = request.getParameter("Created_Date");
	String Customer_Contact_Delivery_Adreess = request.getParameter("Customer_Contact_Delivery_Adreess");
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom?autoReconnect=true", "root", "password");
		connection.setAutoCommit(false);
		PreparedStatement preparedStatement = connection.prepareStatement(
				"INSERT INTO mashroom.customer_master (Customer_Gen_ID, Customer_First_Name, Customer_Last_Name, Customer_contact_person, Customer_contact_person_Mobile_NO, Created_Date ,Customer_Contact_Delivery_Adreess) VALUES (?, ?, ?, ?, ?,?,?)");
		preparedStatement.setString(1, Customer_Gen_ID);
		preparedStatement.setString(2, firstname);
		preparedStatement.setString(3, lastname);
		preparedStatement.setString(4, customerName);
		preparedStatement.setString(5, customerNumber);
		preparedStatement.setString(6, createdDate);
		preparedStatement.setString(7, Customer_Contact_Delivery_Adreess);
		int count = preparedStatement.executeUpdate();
		if (count > 0) {
			preparedStatement = connection.prepareStatement("INSERT INTO mashroom.product_master (customer_id, customer_product, customer_description) VALUES (?, ?, ?)");
		
			String[] productName = request.getParameterValues("productName");
			String[] productDescription = request.getParameterValues("productDesc");
			
			for(count = 0; count < productName.length; count++) {
				preparedStatement.setString(1, Customer_Gen_ID);
				preparedStatement.setString(2, productName[count]);
				preparedStatement.setString(3, productDescription[count]);
				preparedStatement.addBatch();
			}
			int[] insertResult = preparedStatement.executeBatch();
			System.out.print(insertResult);
			connection.commit();
			RequestDispatcher dispatcher = request.getRequestDispatcher("Customer.jsp");
			dispatcher.forward(request, response);
		} else {
			throw new SQLException("Record not inserted !");
		}
	} catch (Exception e) {
		connection.rollback();
		connection.close();
		throw e;
	}
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>