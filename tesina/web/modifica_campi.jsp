<%@include file="include/connessione.jsp"%>

<%
    String nome = request.getParameter("nome");
    String cognome = request.getParameter("cognome");
    String username = request.getParameter("user");
    String password = request.getParameter("password");
    
    Statement mod = con.createStatement();    

    String modifica = "UPDATE \"Utente\" "
            + "SET \"Nome\" =("+nome+")  , \"Cognome\" =("+cognome+"), \"Username\" =("+username+"), \"Password\" = ("+password+") "
            + "WHERE \"Codice_Fiscale\" = " + session.getAttribute("CodiceFiscale") + "";
     
     stat.executeUpdate(modifica);
     response.sendRedirect("account.jsp");        
%>

