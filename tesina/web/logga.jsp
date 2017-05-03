<%@include file="connessione.jsp"%>

<%    String query = "Select \"Utente\" (\"Username\", \"Password\") "
            + "VALUES(\'" + request.getParameter("name") + "\', "
            + "\', \'" + request.getParameter("usr")
            + "\' , \'" + request.getParameter("passwd")
            + "\')";

    stat.executeUpdate(query);

    response.sendRedirect("account.jsp");

%>

