<%@ include file="include/connessione.jsp" %>

<%    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");

    }


    String pref = "INSERT INTO \"Preferito\"(\"Id_Utente\", \"Id_Esercizio\")"
            + "VALUES(\'" + session.getAttribute("CodiceFiscale") + "\', \' "
            + request.getParameter("Id_Esercizio") + "\')";

    stat.executeUpdate(pref);
    response.sendRedirect("account.jsp");


%>