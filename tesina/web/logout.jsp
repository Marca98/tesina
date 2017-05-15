<%@include file="include/connessione.jsp"%>

<%
session.invalidate();
response.sendRedirect("index.jsp");
%>