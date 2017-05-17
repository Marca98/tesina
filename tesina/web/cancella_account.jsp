<%
    String eliminate = "DELETE FROM \"Utente\" WHERE \"Codice_Fiscale\" = '" + session.getAttribute("Utente") + "'";
    
    response.sendRedirect("index.jsp");

%>