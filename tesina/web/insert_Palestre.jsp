<%@ include file="include/connessione.jsp" %>

<%    
    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");
    }

    String cerca = "INSERT INTO \"Cerca\" (\"Id_Utente\", \"Id_Palestra\")"
            + "VALUES(\'" + session.getAttribute("CodiceFiscale") + "\', \'"
            + request.getParameter("Id_Palestra") + "\')";

    stat.executeUpdate(cerca);

    response.sendRedirect("account.jsp");

    
%>