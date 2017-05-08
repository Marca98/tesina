<%@include file="connessione.jsp"%>

<%
session.invalidate();
response.sendRedirect("index.jsp");
%>