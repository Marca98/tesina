<%@include file="include/connessione.jsp"%>
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
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="allenamento.jsp">Allenamento</a></li>
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li>
                        <li><a href="esercizi.jsp">Esercizi</a></li>
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
            <h1>Allenamento</h1><br>
            <p>Non perdere tempo, inizia subito ad allenarti</p> 
            <br>
            <br>
            <br>
        </div>
        <div class="container"><br>
            <div class="well">
                <div class="row">
                    <div class="col-md-6 col-sm-6 " >
                        <img src="media/muscle_and_strength.jpg" width="100%" alt=""/>
                    </div>
                    <div class="col-md-6 col-sm-6 ">
                        <h2>MUSCOLI E FORZA</h2><br>
                        <h3>La nostra gamma per Muscoli & Forza include una serie di prodotti ideati per aumentare la massa magra e la forza oltre che per accelerare il recupero.</h3><br>
                        <br>Ideale per:<br>

                        <br>Chiunque stia cercando di sviluppare in maniera rapida ma costante i propri livelli di forza e la propria massa muscolare
                        Bodybuilder ed atleti che desiderano migliorare la propria forma fisica e le proprie prestazioni
                        Chiunque voglia accelerare il recupero dopo l’allenamento o desideri aumentare il proprio apporto proteico giornaliero
                        Coloro che cercano una soluzione all-in-one per ottenere i migliori risultati possibili dall’esercizio fisico<br>
                        <br><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#muscoli">Scegli piano</button>
                        <!-- Modal -->

                        <div class="modal fade bs-example-modal-lg" id="muscoli" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" >MUSCOLI E FORZA</h4>
                                    </div>
                                    <div class="modal-body">
                                      <img src="media/enorme.jpg" width="100%"/>
                                        <hr>
                                        <h3>Crea la tua scheda personalizzata</h3>
                                        <form>
                                            <div class="form-group">
                                                <label for="obj">Obiettivo: </label>
                                                <input type="text" class="form-control" id="usr">
                                            </div>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="dur">Durata:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">6 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">8 settimane
                                            </label>
                                        </form>
                                        <br>
                                        <br>
                                        <form>
                                            <label for="freq">Frequenza: </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Monofrequenza
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Multifrequenza
                                            </label>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="sed">Sedute:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">3
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">5
                                            </label>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Ok</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                        <br>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <h2>ENERGIA E RESISTENZA</h2><br>
                        <h3>La nostra gamma per Energia & Resistenza comprende una varia selezione di prodotti altamente energetici ideati per coloro che affrontano esercizi ad alta intensita’e sport di resistenza.</h3><br>
                        Oltre ai nostri famosi prodotti ENER:GEL, offriamo integratori adatti alle varie fasi dell’allenamento: prima (PRE:PARE), durante (PRO:LONG) e dopo (RE:CHARGE). Ciclisti, corridori, maratoneti o atleti triathlon non potranno chiedere di più.<br>
                        <br><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#energy">Scegli piano</button>
                        <!-- Modal -->
                        <div class="modal fade bs-example-modal-lg" id="energy" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" >ENERGIA E RESISTENZA</h4>
                                    </div>
                                    <div class="modal-body">
                                        <img src="media/endurance.jpg"  width="100%" alt=""/>
                                        <hr>
                                        <h3>Crea la tua scheda personalizzata</h3>

                                        <form>
                                            <div class="form-group">
                                                <label for="obj">Obiettivo: </label>
                                                <input type="text" class="form-control" id="usr">
                                            </div>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="dur">Durata:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">6 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">8 settimane
                                            </label>
                                        </form>
                                        <br>
                                        <br>
                                        <form>
                                            <label for="freq">Frequenza: </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Monofrequenza
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Multifrequenza
                                            </label>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="sed">Sedute:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">3
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">5
                                            </label>
                                        </form>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Ok</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6" >
                        <img src="media/energy.jpg" width="100%" alt=""/>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-6 col-sm-6" >
                        <img src="media/Yoga.jpg"  width="100%"alt=""/>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h2>DIETA E PERDITA DI PESO</h2><br>
                        <h3>Ridurre il grasso corporeo, perdere peso o semplicemente dimagrire sono alcuni degli obiettivi più comuni, sia per gli uomini che per le donne</h3><br>

                        L'approccio migliore per perdere massa grassa è sempre quello di apportare cambiamenti nello stile di vita, inserendo nella routine quotidiana esercizi e un'alimentazione equilibrata e ben strutturata. Myprotein ti offre un’intera gamma per supportare la tua perdita di peso in maniera sana e sostenibile.<br>

                        <br><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#dieta">Scegli piano</button>
                        <!-- Modal -->
                        <div class="modal fade bs-example-modal-lg" id="dieta" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" >DIETA E PERDITA DI PESO</h4>
                                    </div>
                                    <div class="modal-body">
                                        <img src="media/weight.jpg" width="100%"/>
                                        <hr>                                    
                                        <h3>Crea la tua scheda personalizzata</h3>

                                        <form>
                                            <div class="form-group">
                                                <label for="obj">Obiettivo: </label>
                                                <input type="text" class="form-control" id="usr">
                                            </div>
                                        </form>
                                        <form>
                                            <label for="dur">Durata:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">6 settimane
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">8 settimane
                                            </label>
                                        </form>   
                                        <br>
                                        <br>
                                        <form>
                                            <label for="freq">Frequenza: </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Monofrequenza
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Multifrequenza
                                            </label>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="sed">Sedute:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">3
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">5
                                            </label>
                                        </form>                                 
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Ok</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">

                    <div class="col-md-6 col-sm-6">
                        <h2>
                            MASSA MAGRA</h2><br>
                        <h3>Per ottenere un corpo asciutto sono necessarie disciplina e dedizione</h3><br>

                        La sfida maggiore è trovare il giusto equilibrio e consumare una quantità di calorie a sostenere la crescita muscolare senza accumulare grasso superfluo. Bisogna seguire un'alimentazione che porti a un consumo sufficiente di proteine per favorire la crescita muscolare, mentre i carboidrati sono fondamentali per fornire energia al corpo e assicurare un allenamento intenso. Per mantenere questo delicato equilibrio, Myprotin ha creato un agamma di integratori pre, intra e post workout per accompagnarti nella costruzione di massa magra.<br>

                        <br><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#massam">Scegli piano</button>
                        <!-- Modal -->
                        <div class="modal fade bs-example-modal-lg" id="massam" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" >MASSA MAGRA</h4>
                                    </div>
                                    <div class="modal-body">

                                        <img src="media/leanfaiz.jpg" width="100%"alt=""/>
                                        <hr>                                    
                                        <h3>Crea la tua scheda personalizzata</h3>

                                        <form>
                                            <div class="form-group">
                                                <label for="obj">Obiettivo: </label>
                                                <input type="text" class="form-control" id="usr">
                                            </div>

                                            <label for="dur">Durata: </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="">4 settimane
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="">6 settimane
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="">8 settimane
                                            </label>
                                            <br>
                                            <br>
                                            <label for="freq">Frequenza: </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Monofrequenza
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">Multifrequenza
                                            </label>
                                        </form>
                                        <br>
                                        <form>
                                            <label for="sed">Sedute:  </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">3
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">4
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="optradio">5
                                            </label>
                                        </form>                                  
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Ok</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>                       
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6" >
                        <img src="media/lean_muscle.jpg"  width="100%"alt=""/>
                    </div>
                </div>
                <br><br>
            </div>
        </div><br><br>
        <footer class="container-fluid text-center background-white">
            <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
        </footer>
    </body>
</html>
