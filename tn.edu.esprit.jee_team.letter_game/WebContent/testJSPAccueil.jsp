<HTML> 
<HEAD> 
<TITLE>Accueil</TITLE>
</HEAD> 
<BODY> 
<% 
String nom = request.getParameter("nom"); 
%> 
<H2>Bonjour <%= nom %></H2> 
</BODY> 
</HTML>