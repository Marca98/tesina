<%= request.getParameter("usr")%>
<%= request.getParameter("passwd")%>
<%= request.getParameter("name")%>
<%= request.getParameter("surnm")%>
<%= request.getParameter("email")%>
<%= request.getParameter("ct")%>
<%= request.getParameter("date")%>
<%= request.getParameter("codf")%>

<%@include file="connessione.jsp"%>

<%    
    String query = "INSERT INTO \"Utente\" (\"Nome\", \"Cognome\", \"Username\", \"Password\", \"Citta\", \"Email\", \"Data_Di_Nascita\", \"Codice_Fiscale\") VALUES (\'" + request.getParameter("name") + "\', \'"+ request.getParameter("surnm")+"\', \'"+ request.getParameter("usr")+"\', \'"+ request.getParameter("passwd") +"\', \'"+request.getParameter("ct")+"\', \'"+request.getParameter("email")+"\', \'"+request.getParameter("date")+"\', \'"+request.getParameter("codf")+")";
        
        stat.executeUpdate(query);
        
%>