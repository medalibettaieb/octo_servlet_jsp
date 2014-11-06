<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	good morning everybody 
	<br> the letters today are :
	<%=getServletContext().getInitParameter("motus")%>
	<br>

	<form action="/web/a.jsp" method="post">
		<input type="text" name="name" required><br> <input
			type="text" name="word" required><br> <input
			type="submit" value="go"><br>

	</form>
	<%!List<String> words = new ArrayList<String>();
	int visitCount = 0;%>
	<%
		String name = request.getParameter("name");
		if (visitCount > 0) {
			words.add(name + " said " + request.getParameter("word"));
		}
		visitCount++;
	%>
	<p>

		<%
			for (String n : words) {
		%>

		<%=n%><br>

		<%
			}
		%>





	</p>
</body>
</html>