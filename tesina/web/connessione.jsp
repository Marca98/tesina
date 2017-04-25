<%--
    Connessione
--%>

<%@ page import="java.sql.*" %>

<%
    final String DRIVER="org.firebirdsql.jdbc.FBDriver"; //Nome del driver
    final String DB_NAME="jdbc:firebirdsql://localhost:3050/C:/Users/Andrea/Desktop/TESINA_GYM/tesina/TESINA.FDB"; //Nome del database completo di percorso
    final String DB_USER="SYSDBA"; // Nome utente
    final String DB_PASSWORD="masterkey"; //Password
    
    Connection con=null; //Riferimento alla connessione
    
    Statement stat = null;
    
    try {
        Class.forName(DRIVER); //Carica il driver
        con=DriverManager.getConnection(DB_NAME, DB_USER, DB_PASSWORD); //Effettua la connessione al database
        stat = con.createStatement();
      //out.println("Connessione al server DBMS avvenuta con successo!");
    }
    
    catch(Exception e) {
%>
        <%@ page contentType="text/html" pageEncoding="UTF-8"%>

        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
            "http://www.w3.org/TR/html4/loose.dtd">

        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Connessione</title>
            </head>
            <body>
                <h2>Connessione</h2>
                <div style="text-align:center">
                    <h3>
                        Impossibile connettersi al server DBMS!
                    </h3>
                    <br>
                    Possibile causa: <%=e.getMessage()%>
                </div>
            </body>
        </html>
<%
        con.close();

        return;
    }
%>
