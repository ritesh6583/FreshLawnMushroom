<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String Employee_ID = request.getParameter("Employee_ID");
	String firstname = request.getParameter("Employee_First_Name");
	String lastname = request.getParameter("Employee_Last_Name");
	String DOB = request.getParameter("DOB");
	String Employee_Correspondence_Address = request.getParameter("Employee_Correspondence_Address");
	String Employee_Permanent_Address = request.getParameter("Employee_Permanent_Address");
	String Email_ID = request.getParameter("Email_ID");
	String Mobile_No = request.getParameter("Mobile_NO");
	String Joining_Date = request.getParameter("Joining_Date");
	String Release_Date = request.getParameter("Release_Date");
	String created_Date = request.getParameter("created_Date");
	String created_By = request.getParameter("created_By");
	String User_Name = request.getParameter("User_Name");
	String PassWord = request.getParameter("ESqHyRTdks");
	Connection connection = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12200526", "sql12200526", "ESqHyRTdks");
		PreparedStatement preparedStatement = connection.prepareStatement(
				"INSERT INTO mashroom.employee_master VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

		int empId = Integer.parseInt(Employee_ID);

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		long parseDOB = simpleDateFormat.parse(DOB).getTime();

		preparedStatement.setInt(1, empId);
		preparedStatement.setString(2, firstname);
		preparedStatement.setString(3, lastname);
		preparedStatement.setDate(4, new Date(parseDOB));
		preparedStatement.setString(4, DOB);
		preparedStatement.setString(5, Employee_Correspondence_Address);
		preparedStatement.setString(6, Employee_Permanent_Address);
		preparedStatement.setString(7, Email_ID);
		preparedStatement.setInt(8, Integer.parseInt(Mobile_No));
		preparedStatement.setDate(9, new Date(parseDOB));
		preparedStatement.setDate(10, new Date(parseDOB));
		preparedStatement.setDate(11, new Date(parseDOB));
		preparedStatement.setString(12, created_By);
		preparedStatement.setString(13, User_Name);
		preparedStatement.setString(14, PassWord);
		int count = preparedStatement.executeUpdate();
		connection.close();
		if (count > 0) {
%>
<jsp:forward page="Employee.jsp"></jsp:forward>
<%
	} else {
%>
<jsp:forward page="Employee.jsp"></jsp:forward>
<%
	}
	} catch (Exception e) {
		out.print(e);
	}
%>