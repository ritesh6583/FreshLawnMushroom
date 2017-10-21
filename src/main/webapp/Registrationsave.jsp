<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String gender = request.getParameter("gender");
	
	String UserName = request.getParameter("UserName");
	String PassWord = request.getParameter("PassWord");
	String DOB = request.getParameter("DOB");
	String language = request.getParameter("language");
	String Remarks = request.getParameter("Remarks");
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mashroom", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"INSERT INTO mashroom.registration VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

		preparedStatement.setString(1, firstname);
		preparedStatement.setString(2, lastname);
		preparedStatement.setString(3, gender);
		preparedStatement.setString(4, UserName);
		preparedStatement.setString(5, PassWord);
		preparedStatement.setString(6, DOB);
		preparedStatement.setString(7, language);
		preparedStatement.setString(8, Remarks);
		int count = preparedStatement.executeUpdate();
		connection.close();
		if (count > 0) {
%>
<jsp:forward page="Registrationsave.jsp"></jsp:forward>
<%
	} else {
%>
<jsp:forward page="Registrationsave.jsp"></jsp:forward>
<%
	}
	} catch (Exception e) {
		out.print(e);
	}
%>