
<%@ include file="include/connessione.jsp" %>

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
        <link rel="stylesheet" href="css/cssTesina.css">
        <link href="js/jsGym.js">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:600" rel="stylesheet">

    </head>
    <link rel="icon" href="media/muscle.png">
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
                    <ul class="bold nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li>
                        <li><a href="esercizi.jsp">Esercizi</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="account.jsp">Logged in <%= session.getAttribute("Utente")%></a></li>
                        <li><a href="logout.jsp">Logout</a></li>                                                               
                    </ul>
                </div>
            </div>
            <div style="height: 1px; background-color:#34889d;"></div>
        </nav>
        <div class="jumbotron text-center">
            <h1>Gestione account</h1><br>
            <p>Benvenuto <%= session.getAttribute("Utente")%></p>
            <br>
            <br>
            <br>
        </div>
        <div class="container"><br>
            <div class="well">
                <h2>Account Utente</h2><br><br>
                <h3>Gestione</h3><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">   
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Cognome</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Codice Fiscale</th>                    
                                </tr>
                            </thead>
                            <script>
                                $(document).ready(function () {
                                    $('[data-toggle="tooltip"]').tooltip();
                                });
                            </script>

                            <tbody>
                                <%
                                    String query = "Select * From \"Utente\" WHERE \"Codice_Fiscale\" = '" + session.getAttribute("CodiceFiscale") + "'";
                                    Statement a = con.createStatement();
                                    ResultSet rs = a.executeQuery(query);

                                    while (rs.next()) {

                                %>
                                <tr>  

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Nome")%></a></td>
                                        <% String qq = "ALTER TABLE \"Utente\" ALTER \"Nome\" TO Nome";%>
                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Cognome")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Username")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Password")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Codice_Fiscale")%></a></td>
                                </tr>
                                <%

                                    }%>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-1"></div>
                </div>                  
                <br><br>
                <h3>Piani utente</h3><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">   
                        <table class="table table-hover">
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
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" class="center-block" >
                    Elimina Account
                </button>
                <div class="modal fade" id="myModal" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <br>
                                <hr>
                                <br>
                                <h4 style="text-align: center ">Sei sicuro di voler eliminare il tuo account?</h4>                
                                <br>
                            </div>
                            <div class="modal-footer">
                                
                                <a href="cancella_account.jsp"<button type="button" class="btn btn-primary" >Si</button></a>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Chiudi</button>                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br><br>
        </div>

        <footer class="container-fluid text-center background-white">
            <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
        </footer>
    </body>
</html>
