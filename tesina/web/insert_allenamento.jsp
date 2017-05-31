<%@ include file="include/connessione.jsp" %>

<%    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");
    }

    String durata = request.getParameter("dur");
    String frequenza = request.getParameter("freq");
    String sedute = request.getParameter("sed");
    
    System.out.println(durata+frequenza+sedute);

    String allenamento = "INSERT INTO \"Allenamento\" (\"Obiettivo\",\"Id_Utente\", \"Durata\")"
            + "VALUES(\'" + request.getParameter("obj") + "\', "
            + " \'" + session.getAttribute("CodiceFiscale") + "\', \'"
            + request.getParameter("dur") + "\')";
    
    stat.executeUpdate(allenamento);

    String scheda = "INSERT INTO \"Scheda\" (\"Frequenza\", \"Sedute\")"
            + "VALUES(\'" + request.getParameter("freq") + "\', "
            + "\'" + request.getParameter("sed") + "\')";

    stat.executeUpdate(scheda);

    String prevede = "INSERT INTO \"Prevede\" (\"Id_Scheda\", \"Id_Allenamento\")"
            + "VALUES( (Select max(\"Id_Scheda\") from \"Scheda\") ,"
            + "(Select max(\"Id_Allenamento\") from \"Allenamento\"))";

    stat.executeUpdate(prevede);

    response.sendRedirect("account.jsp");
%>