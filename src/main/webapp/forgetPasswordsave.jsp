 %><%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String Email = request.getParameter("Email_ID");
String BodyMessage = "Email_ID:" + Email_ID ;

final String username = "sritesh37@gmail.com";
final String password = "6583202#";

Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");

Session session1 = Session.getInstance(props, new javax.mail.Authenticator() {
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(username, password);
	Connection connection = null;
	String password = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://lo'calhost:3306/mashroom", "root", "password");
		Statement preparedStatement = connection.createStatement();

		ResultSet rs = preparedStatement
				.executeQuery("Select * from mashroom.employee_master where Email_ID='" + Email + "'");

		while (rs.next()) {
			password = rs.getString("Email_ID");
		}

		if (password != null) {
			Message mineMessage = new MimeMessage(Session1);
			mineMessage.setFrom(new InternetAddress("sritesh37@gmail.com"));
			mineMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sritesh37@gmail.com"));
			mineMessage.setSubject("Testing Subject");
			mineMessage.setText("Dear Mail Crawler," + "\n\n " + BodyMessage + "!");
			Transport.send(mineMessage);
		}
		else 
		{
			
		}

	} catch (Exception e) {
		connection.close();
		throw e;
	}
%><jsp:forward page="forgetPassword.jsp"></jsp:forward>