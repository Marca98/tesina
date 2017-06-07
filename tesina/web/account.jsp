
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
                    <a class="bold navbar-brand" href="index.jsp">Gym mate</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class=" nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li>
                        <li><a href="scheda.jsp">Scheda</a></li>
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
                <h2 class="bold">Account Utente</h2><br><br>
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

                                    <td><form method="post" action="modifica_campi.jsp"  name="edit" value="nome"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Nome")%></a></form></td>  


                                    <td><form method="post" action="modifica_campi.jsp" name="edit" value="2"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Cognome")%></a></form></td>

                                    <td><form method="post" action="modifica_campi.jsp" name="edit" value="3"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Username")%></a></form></td>

                                    <td><form method="post" action="modifica_campi.jsp" name="edit" value="4"><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= rs.getString("Password")%></a></form></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom"><%= rs.getString("Codice_Fiscale")%></a></td>
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
                                    <th>Durata</th>                                  
                                    <th>Scheda N°</th>
                                    <th>Frequenza</th>
                                    <th>Sedute</th>  

                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String querty = "Select A.\"Obiettivo\", A.\"Id_Allenamento\", A.\"Durata\", S.\"Id_Scheda\", S.\"Frequenza\", S.\"Sedute\"  From \"Allenamento\" A, \"Scheda\" S, \"Prevede\" P  Where A.\"Id_Allenamento\" = P.\"Id_Prevede\" and P.\"Id_Prevede\" = S.\"Id_Scheda\"";
                                    Statement x = con.createStatement();
                                    ResultSet xc = x.executeQuery(querty);

                                    while (xc.next()) {

                                %>
                                <tr>  

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Obiettivo")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Id_Allenamento")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Durata")%> settimane</a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Id_Scheda")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Frequenza")%></a></td>

                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= xc.getString("Sedute")%></a></td>                                    

                                </tr>
                                <%

                                    }%>
                            </tbody>
                        </table>                        
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <h3>Esercizi preferiti</h3><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">   
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>N°</th>
                                    <th>Gruppo Muscolare</th>
                                    <th>Pausa</th>                                  
                                    <th>Serie</th>
                                    <th>Ripetizioni</th>


                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String pref = "Select * From \"Preferito\"";
                                    Statement pr = con.createStatement();
                                    ResultSet p = a.executeQuery(pref);

                                    while (p.next()) {
                                %>

                            <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= p.getString("Nome_Preferito")%></a></td>

                            <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= p.getString("Id_esercizio")%></a></td> 


                            <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
                <br><br>
                <h3>Palestre votate</h3><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">   
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Voto</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String heart = "Select \"Voto\" from \"Palestra\"";
                                    Statement d = con.createStatement();
                                    ResultSet dc = x.executeQuery(heart);

                                    while (dc.next()) {

                                %>
                                <tr>  
                                    <td><a href="#" data-toggle="tooltip" data-placement="bottom" title="Modify!"><%= dc.getString("Voto")%></a></td>                                                                     
                                </tr>
                                <%

                                    }%>
                            </tbody>
                        </table>                        
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" class="center-block" align="center" >
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
                            <div class="modal-footer"  align="right">

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
