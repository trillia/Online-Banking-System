<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
	<%
		if(session!=null)
			session.invalidate();
		response.sendRedirect("index.html");
	%>
</body>

</html>
