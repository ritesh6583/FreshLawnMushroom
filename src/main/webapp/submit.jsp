<%

	String username = request.getParameter("username");
	String password = request.getParameter("ESqHyRTdks");

	if ("password".equalsIgnoreCase(password)) {
		if ("usermd".equalsIgnoreCase(username)) {
			request.getRequestDispatcher("/submitmd.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/submitemp.jsp").forward(request, response);
		}
	}
	System.out.print(username);
	System.out.print(password);
%>