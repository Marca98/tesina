
<%@ page import="java.sql.*" %>

<%
    final String DRIVER = "org.firebirdsql.jdbc.FBDriver"; //Nome del driver
    final String DB_NAME = "jdbc:firebirdsql://localhost:3050/C:/Lavoro/TESINA.FDB"; //Nome del database completo di percorso
    final String DB_USER = "SYSDBA"; // Nome utente
    final String DB_PASSWORD = "masterkey"; //Password

    Connection con = null; //Riferimento alla connessione

    Statement stat = null;

    try {
        Class.forName(DRIVER); //Carica il driver
        con = DriverManager.getConnection(DB_NAME, DB_USER, DB_PASSWORD); //Effettua la connessione al database
        stat = con.createStatement();
          
       // out.println("Ti sei registrato con successo!");
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>


