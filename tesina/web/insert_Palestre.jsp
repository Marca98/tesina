<%@ include file="include/connessione.jsp" %>

<%    
    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");
    }

    
    String palestre = "INSERT INTO \"Palestra\" (\"Nome\",\"Id_Palestra\", \"Email\",\"Orario\",\"Indirizzo\",\"Voto\",\"Telefono\",\"Costo\")"
            + "VALUES(\'" + request.getParameter("obj") + "\', "
            + request.getParameter("Nome") + "\', "
            + request.getParameter("Telefono") + "\', "
            + request.getParameter("Costo") + "\', "
            + request.getParameter("Orario") + "\', "
            + request.getParameter("Indirizzo") + "\')";

    stat.executeUpdate(palestre);

    String cerca = "INSERT INTO \"Cerca\" (\"Id_Palestra\",\"Id_Utente\",\"Id_Cerca\")"
            + "VALUES(\'" + request.getParameter("Id_Palestra") + "\', "
            + " \'" + session.getAttribute("CodiceFiscale") + "\', \'"
            + request.getParameter("Id_Cerca") + "\')";

    stat.executeUpdate(cerca);

    String utente = "INSERT INTO \"Utente\" (\"Codice_Fiscale\")"
            + "VALUES(\'" + session.getAttribute("CodiceFiscale") + "\')";

    stat.executeUpdate(utente);
    
    System.out.println(palestre+cerca+utente);

    
%>