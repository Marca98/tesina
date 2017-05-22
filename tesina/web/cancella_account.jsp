 <%
    String eliminate = "DELETE * FROM \"Utente\" WHERE \"Codice_Fiscale\" = '" + session.getAttribute("Utente") + "'";
    
    session.invalidate();
    response.sendRedirect("index.jsp");

%>