<%@ include file="include/connessione.jsp" %>

<%    
    if (session.getAttribute("CodiceFiscale") == null) {
        response.sendRedirect("login.jsp");
    }

    
    String palestre = "INSERT INTO \"Palestra\" (\"Voto\")"
            + "VALUES(\'"+ request.getParameter("Voto") + "\')";

    stat.executeUpdate(palestre);



    
%>