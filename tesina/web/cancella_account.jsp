<%@include file="include/connessione.jsp"%>

<%
    try{
        Statement stDelete = con.createStatement();

        String queryDelete =    "DELETE FROM \"Utente\" " +
                                "WHERE \"Codice_Fiscale\" = '" + session.getAttribute("CodiceFiscale") + "'";

        stDelete.executeUpdate(queryDelete);     
        session.invalidate();
        response.sendRedirect("index.jsp");
        
    }
    
    catch(SQLException e){
        out.println("Qualcosa è andato storto durante il caricamento della tua query");
        out.print(e.getMessage());
    }                
    finally{
        
    }
%>