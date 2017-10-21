<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>



<%@ page language="java" errorPage="myerror.jsp"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String Name = request.getParameter("Name");
	String Email = request.getParameter("Email");

	String Contact = request.getParameter("Contact");
	String state = request.getParameter("state");
	String message = request.getParameter("Message");

	String BodyMessage = "Name:" + Name ;

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
		}
	});

	try {

		Message mineMessage = new MimeMessage(session1);
		mineMessage.setFrom(new InternetAddress("sritesh37@gmail.com"));
		mineMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sritesh37@gmail.com"));
		mineMessage.setSubject("Testing Subject");
		mineMessage.setText("Dear Mail Crawler," + "\n\n " + BodyMessage + "!");
		Transport.send(mineMessage);

	} catch (MessagingException exception) {
		exception.printStackTrace();
	}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>


