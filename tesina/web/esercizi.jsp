<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%    Boolean logged = false;
    if (session.getAttribute("CodiceFiscale") != null) {
        logged = true;
    }
%>
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
        <link href="https://fonts.googleapis.com/css?family=Raleway:600" rel="stylesheet">
    </head>
    <link rel="icon" href="muscle.png">
    <body>
        <nav class="navbar-default navbar-fixed-top" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="bold navbar-brand" href="#">Gym mate</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class=" nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li>
                        <li class="active"><a href="esercizi.jsp">Esercizi</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <%
                            if (logged) {
                        %>
                        <%@include file="include/bottone_loggato.jsp"%>        
                        <%} else { %>
                        <%@include file="include/bottoni.jsp"%>
                        <% }%>                        
                    </ul>
                </div>
            </div>
            <div style="height: 1px; background-color:#34889d;"></div>
        </nav>
        <div class="jumbotron text-center">
            <h1>Esercizi</h1><br>
            <p>Trova l'esercizio perfetto alle tue esigenze</p><br><br><br>
        </div>
        <div class="container"><br><br>
            <div class="well">                
                <div class="row">
                    <img src="media/said.png" width="90%" class="col-md-6 imgjeff"/>
                    <div class="container" >

                        <div class="panel panel-default col-md-6">
                            <div class="panel-heading">Scegli gruppo muscolare</div>
                            <div class="panel-body btn-group-vertical">
                                <br> <button type="button" class="btn-group-vertical" > Petto</button>
                                <br> <button type="button"class="btn-group-vertical" > Spalle</button>
                                <br> <button type="button" class="btn-group-vertical" > Bicipiti </button>
                                <br> <button type="button" class="btn-group-vertical" > Tricipiti </button>
                                <br> <button type="button"class="btn-group-vertical" > Addominali </button>
                                <br> <button type="button" class="btn-group-vertical" > Gambe </button>
                                <br> <button type="button" class="btn-group-vertical" > Schiena </button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <footer class="container-fluid text-center">
            <p>Creato e ideato da Andrea Marchesoni 5AIN © </p>
        </footer>
    </body>
</html>
