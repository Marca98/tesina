<%@ include file="include/connessione.jsp" %>

<%
    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");

    }

    String durata = request.getParameter("dur");
    String frequenza = request.getParameter("freq");
    String sedute = request.getParameter("sed");
    String n_scheda = request.getParameter("sch");

    String allenamento = "INSERT INTO \"Allenamento\" (\"Obiettivo\",\"Id_Utente\", \"Durata\")"
            + "VALUES(\'" + request.getParameter("obj") + "\', "
            + "\' , \'" + request.getParameter("codf")
            + "\', \'" + request.getParameter("dur") + "\')";

    String scheda = "INSERT INTO \"Allenamento\" (\"Frequenza\",\"Sedute\")"
            + "VALUES(\'" + request.getParameter("freq") + "\', "
            + "\', \'" + request.getParameter("sed") + "\')";
    
    String prevede = "INSERT INTO \"Prevede\" (\"Id_Scheda\", \"Id_Allenamento\")"
            + "VALUES((Select max(\"Id_Allenamento\") from \"Allenamento\"), "
            + "(Select max(\"Id_Allenamento\") from \"Allenamento\"))";


%>