<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Game Room</title>
</head>
<body>
	<h1><%=getServletContext().getInitParameter("letters")%></h1>
	<b>good morning</b>
	
	<form action="/tn.edu.esprit.jee_team.letter_game/welcome.jsp" method="post">
		<input type="text" name="name" required ><br> <input type="text"
			name="word" required> <input type="submit" value="go">


	</form>

	<%! List<String> words = new ArrayList<String>();%>
	<%!int visitCount = 0;%>
	<%
		String name = request.getParameter("name");
		if (visitCount > 0) {
			words.add(name + " said : " + request.getParameter("word"));
		}
		visitCount++;
	%>



	<%
		for (String n : words) {
	%>
	

		<%=n%>

	
	<%
		}
	%>




</body>
</html>