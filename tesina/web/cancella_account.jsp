<%
    String eliminate = "DELETE FROM \"Utente\" WHERE \"Codice_Fiscale\" = '" + session.getAttribute("CodiceFiscale") + "'";
%>