
<%@ include file="connessione.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gym Mate</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="cssTesina.css">
        <link href="jsGym.js">

    </head>
    <link rel="icon" href="muscle.png">
    <body>

        <nav class="navbar-default navbar-fixed-top " >
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="index.jsp">Gym mate</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li>
                        <li><a href="contatti.jsp">Contatti</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="account.jsp">Logged in <%= request.getParameter("usr")%></a></li>
                        <li><a href="logout.jsp">Logout</a></li>                                                               
                    </ul>
                </div>
            </div>
            <div style="height: 1px; background-color:#34889d;"></div>
        </nav>

        <div class="jumbotron text-center">
            <h1>Gestione account</h1><br>
            <p>Benvenuto <%= request.getParameter("usr")%></p>
            <br>
            <br>
            <br>
        </div>

        <div class="container"><br>

            <div class="well">
                <h2>Account Utente</h2><br><br>

                <h3>Gestione</h3><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Cognome</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Codice Fiscale</th>                    
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String query = "Select * From \"Utente\" WHERE \"Codice_Fiscale\" = " + session.getAttribute("Utente") + "";
                            Statement a = con.createStatement();
                            ResultSet rs = a.executeQuery(query);

                            while (rs.next()) {

                        %>
                        <tr>  
                            <td><%= rs.getString("Nome")%></td>
                            <td><%= rs.getString("Cognome")%></td>
                            <td><%= rs.getString("Username")%></td>
                            <td><%= rs.getString("Password")%></td>
                            <td><%= rs.getString("Codice_Fiscale")%></td>
                        </tr>
                        <%

                                }%>

                    </tbody>
                </table>
                <br><br>
                <h3>Piani utente</h3><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Obiettivo</th>
                            <th>N°</th>
                            <th>Data inizio</th>
                            <th>Data fine</th>
                            <th>Scheda N°</th>                                
                        </tr>
                    </thead>


                </table>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>


        </div><br><br>

        <footer class="container-fluid text-center background-white">
            <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
        </footer>

    </body>
</html>
