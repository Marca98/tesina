
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connessione.jsp" %>
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
        <link rel="icon" href="muscle.png">
    </head>

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

                    </ul>
                </div>
            </div>
            <div style="height: 1px; background-color:#34889d;"></div>
        </nav>

        <div class="jumbotron text-center">
            <h1>Gestione account</h1><br>
            <p>Benvenuto utente</p> 
            <br>
            <br>
            <br>
        </div>

        <div class="container"><br>

            <div class="well">
                <h2>Account Utente</h2>

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
                        <%                                String query = "Select * From \"Utente\" ";
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
                            <td><%= rs.getString("Citta")%></td>
                            <td><%= rs.getString("Data_Di_Nascita")%></td>

                        </tr>
                        <%

                            }%>
                    </tbody>
                </table>
                <h2>Piano Nutrizionale</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Utente</th>
                            <th>Inizio</th>
                            <th>Fine</th>
                            <th>Tipo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String querys = "Select * From \"Allenamento\" ";
                            Statement b = con.createStatement();
                            ResultSet re = b.executeQuery(query);

                            while (re.next()) {


                        %>
                        <tr>                                
                            <td><%= re.getString("Id_Allenamento")%></td>
                            <td><%= re.getString("Id_Utente")%></td>
                            <td><%= re.getString("Data_Inizio")%></td>
                            <td><%= re.getString("Data_Fine")%></td>
                            <td><%= re.getString("Obiettivo")%></td>

                        </tr>
                                               <%

                            }%>
                    </tbody>
                </table>
                <h2></h2>
                <br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>


        </div><br><br>

        <footer class="container-fluid text-center background-white">
            <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
        </footer>

    </body>
</html>
