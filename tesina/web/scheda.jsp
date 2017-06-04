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
                        <li class="active"><a href="scheda.jsp">Scheda</a></li>
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
            <h1>Scheda</h1><br>
            <p>Crea la tua scheda personalizzata</p><br><br><br>
        </div>
        <div class="container"><br><br>
            <div class="well">                
                <div class="row">                    
                    <img src="media/said.png" width="90%" class="col-md-6 imgjeff" id="jeff"  usemap="#Map" />


                    <div class="container" >

                        <div class="panel panel-default col-md-6">
                            <div class="panel-heading"><h3>Scegli gruppo muscolare</h3></div>
                            <div class="panel-body btn-group-vertical">
                                <div class="btn-group-vertical">                                    
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#chest">Pettorali</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="chest" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content ">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">PETTORALI</h4>
                                                    <img src="media/pettorali_int.png" class="col-md-6" width="60%" />
                                                    <p class="col-md-6">Rientra nella categoria dei grandi muscoli, situato nella parte anteriore alta del petto, origina dallo sterno e finisce sul braccio. Il pettorale, è composto da un unico muscolo il gran pettorale più un piccolo muscolo situato al di sotto chiamato piccolo pettorale 
                                                        Gli esercizi per i pettorali agiscono, quindi, sull'intero muscolo, variando semmai la regione del muscolo dove agiscono maggiormente. 
                                                    </p>
                                                </div>
                                                <div class="modal-body">                                                                                                                                                            
                                                    <h4>Scegli esercizio</h4>
                                                    <div class="row">
                                                        <br>
                                                        <div class="col-md-4">panca piana
                                                        <img src="media/PETTORALI-SPINTE-PANCA-PIANA-BILANCIERE-2-B.png" alt=""/>
                                                        </div>
                                                        <br>
                                                        <div class="col-md-4">manubri
                                                            <img src="media/PETTORALI-APERTURE-MANUBRI-PANCA-ALTA-B.png" alt=""/>
                                                        </div>
                                                        <br>
                                                        <div class="col-md-4">piegamenti alle parallele
                                                            <img src="media/PETTORALI-DIPS-PARALLELE-B.png" alt=""/>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bicep">Bicipiti</button>
                                    <div class="modal fade" id="bicep" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">BICIPITI</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tricep">Tricipiti</button>
                                    <div class="modal fade" id="tricep" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">TRICIPITI</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#abs">Addome</button>
                                    <div class="modal fade" id="abs" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">ADDOME</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#leg">Gambe</button>
                                    <div class="modal fade" id="leg" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">GAMBE</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#back">Deltoidi</button>
                                    <div class="modal fade" id="back" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">DELTOIDI</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#shoulder">Spalle</button>
                                    <div class="modal fade" id="shoulder" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">SPALLE</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fb">Full Body</button>
                                    <div class="modal fade" id="fb" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">FULL BODY</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>scegli esercizio</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

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
