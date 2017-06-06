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
                    <img src="media/said.png" width="90%" class="col-md-6 imgjeff" id="jeff"/>
                    <div class="container" >

                        <div class="panel panel-default col-md-6">
                            <div class="panel-heading"><h3>Scegli gruppo muscolare</h3></div>
                            <div class="panel-body btn-group-vertical">
                                <div class="btn-group-vertical">                                    
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#chest">Pettorali</button>
                                    <!-- Modal -->

                                    <div class="modal fade" id="chest" role="dialog" >
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
                                                        <form method="get" action="insert_esercizi.jsp">
                                                            <div class="col-md-4"><h5>panca piana</h5>
                                                                <img src="media/PETTORALI-SPINTE-PANCA-PIANA-BILANCIERE-2-B.png" />
                                                                <button type="submit" class="btn btn btn-md glyphicon glyphicon-star-empty" name="Id_Esercizio" value="panca piana"></button>
                                                            </div>

                                                            <div class="col-md-4"><h5>manubri</h5>
                                                                <img src="media/PETTORALI-APERTURE-MANUBRI-PANCA-ALTA-B.png" />
                                                                <button type="submit" class="btn btn- btn-md glyphicon glyphicon-star-empty" name="Id_Esercizio" value="manubri"></button>
                                                            </div>

                                                            <div class="col-md-4"><h5>piegamenti alle parallele</h5>
                                                                <img src="media/PETTORALI-DIPS-PARALLELE-B.png" />
                                                                <button type="submit" class="btn btn btn-md glyphicon glyphicon-star-empty" name="Id_Esercizio" value="piegamenti alle parallelle"></button>
                                                            </div>
                                                        </form>
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
                                                    <img src="media/lib_78.png" class="col-md-6" width="60%"/>
                                                    <p class="col-md-6">Muscolo anteriore del braccio, diviso in capo lungo e capo corto, sono composti frontalmente dal muscolo bicipite e lateralmente dal branchiale che ne completa il volume. 
                                                        Gli esercizi per i bicipiti sono sia esercizi multi-articolari dedicati allo sviluppo della forza e del volume generale come curl bilanciere in piedi o il curl alternato manubri in piedi che esercizi di isolamento per sviluppare i dettagli. </p>
                                                </div>
                                                <div class="modal-body">
                                                    <h4>scegli esercizio</h4>
                                                    <div class="row">

                                                        <div class="col-md-4"><h5>martello</h5>                                                           
                                                            <img src="media/hammer-curl-cavi-corda-b.png" name="Id_Esercizio" value="martello"/>
                                                        </div>

                                                        <div class="col-md-4"><h5>curl in piedi</h5>
                                                            <img src="media/bicipiti-curl-bilancieri-piedi-b.png" name="Id_Esercizio" value="curl in piedi"/>
                                                        </div>

                                                        <div class="col-md-4"><h5>manubri alternati</h5>
                                                            <img src="media/bicipiti-curl-manubri-alternato-piedi-b.png" name="Id_Esercizio" value="manubri alternati"/>
                                                        </div>
                                                    </div>

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
                                                    <img src="media/lib_84.png" class="col-md-6"/>
                                                    <p class="col-md-6">Muscolo posteriore del braccio, antagonista del bicipite. Si compone di tre capi: lungo, mediale (il più breve) e laterale. Il capo lungo origina (inizia) dalla scapola, mentre gli altri due dall’omero; si fissano in un unico tendine, per arrivare al gomito. 
                                                        L'allenamento dei tricipiti quindi deve tenere conto di tutti e tre i capi e quindi essere composto da esercizi per lo sviluppo completo di tutte le sue sezioni. Contrariamente a quanto erroneamente si pensi le dimensioni del braccio non dipendono principalmente dal bicipite ma fondamentalmente dal tricipite che ne occupa più dei 2/3 del volume.</p>
                                                </div>
                                                <div class="modal-body">
                                                    <h4>Scegli esercizio</h4>
                                                    <div class="row">
                                                        <div class="col-md-4"><h5>Manubrio a 90°</h5>
                                                            <img src="media/manubrio90.png" name="Id_Esercizio" value="manubrio a 90°"/>
                                                        </div>
                                                        <div class="col-md-4"><h5>Pushdowns</h5>
                                                            <img src="media/pushdowns.png" name="Id_Esercizio" value="pushdowns"/>
                                                        </div>
                                                        <div class="col-md-4"><h5>French press</h5>
                                                            <img src="media/french.png" name="Id_Esercizio" value="french press"/>
                                                        </div>
                                                    </div>
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
                                                    <img src="media/abs.png" class="col-md-6"/>
                                                    <p class="col-md-6">Muscolo anteriore del busto. Importante dal punto di vista estetico, ma soprattutto dal punto di vista posturale. Origina dallo sterno (e dalle coste), per finire (inserzione) al livello pubico. Gli addominali sono composti da un unico muscolo il retto addominale che occupa tutta la zona anteriore dai pettorali fino al basso ventre. Lateralmente è completato dagli obliqui esterni chiamati comunemente addominali obliqui o laterali. 
                                                        Il numero di esercizi per l'allenamento degli addominali è davvero elevato e sono quasi tutti esercizi di isolamento</p>
                                                    
                                                </div>
                                                <div class="modal-body">
                                                    <h4>Scegli esercizio</h4>
                                                    <div class="row">
                                                        <div class="col-md-4"><h5>Plank su fitball</h5>
                                                            <img src="media/addominali-plank-gambe-su-fitball-b.png" alt=""/>
                                                        </div>
                                                        <div class="col-md-4"><h5>Crunch ai cavi</h5>
                                                            <img src="media/crunchcavi.png" alt=""/>
                                                        </div>
                                                        <div class="col-md-4"><h5>Alzate gambe a 90°</h5>
                                                            <img src="media/gambealzate90.png" alt=""/>
                                                        </div>
                                                    </div>
                                                    
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
