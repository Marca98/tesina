<%@include file="include/connessione.jsp"%>
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
        <link rel="stylesheet" href= "css/cssTesina.css"> 
        <link href="js/jsGym.js">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:600" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="animate.css" />
        <script src="viewportchecker.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> <!-- We also need jQuery -->

        <style> 

            /* Add a gray background color and some padding to the footer */ 
            footer { 
                background-color: #f2f2f2; 
                padding: 25px; 
            } 

            .carousel-inner img { 
                width: 100%;/* Set width to 100% */ 
                height: 500px;                              

                /*margin: auto;*/ 
                min-height:300px; 
            } 

            /* Hide the carousel text when the screen is less than 600 pixels wide */ 
            @media (max-width: 400px) { 
                .carousel-caption { 
                    display: none; 
                } 
            } 
        </style> 
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
                    <a class="bold navbar-brand" href="index.jsp">Gym mate</a> 
                </div> 
                <div class="collapse navbar-collapse" id="myNavbar"> 
                    <ul class="nav navbar-nav"> 
                        <li class="active"><a href="index.jsp">Home</a></li> 
                        <li><a href="allenamento.jsp">Allenamento</a></li> 
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li> 
                        <li><a href="scheda.jsp">Scheda</a></li> 
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

        <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
            <!-- Indicators --> 
            <ol class="carousel-indicators"> 
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
                <li data-target="#myCarousel" data-slide-to="1"></li> 
            </ol> 

            <!-- Wrapper for slides --> 
            <div class="carousel-inner" role="listbox"> 
                <div class="item active"> 
                    <img src="media/Gym-HD-Wallpaper.jpg" alt="Image"> 
                    <div class="carousel-caption"> 

                    </div>       
                </div> 

                <div class="item"> 
                    <img src="media/Gym-Wallpaper-.jpg" alt="Image"> 
                    <div class="carousel-caption"> 

                    </div>       
                </div> 
            </div> 

            <!-- Left and right controls --> 
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
                <span class="sr-only">Previous</span> 
            </a> 
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
                <span class="sr-only">Next</span> 
            </a> 
        </div> 

        <div class=" container" ><br> 
            <div class="well text-center"> 
                <h1 class="display-1">Gym Mate</h1><br>              
                <h4>Raggiungi i tuoi obiettivi</h4><br>

                <div class="post">
                    <img src="media/attempt_2-052205.jpg" width="90%"/><br>                 
                    <br><a href="login.jsp"><button type="button" class="btn btn-info btn-lg" style="margin-top: -150px !important" class="center-block" align="center" >JOIN THE CREW</button></a>                 
                </div>

                <hr>
                <br>
                <div class="row" >
                    <div class="post col-md-6 col-md-6 " >
                        <img src="media/gear-patrol-stop-doing-this-at-gym-lead-full.jpg" width="80%"/>
                        <br><a href="allenamento.jsp"><button type="button" class="btn btn-info btn-lg"  class="center-block" style="margin-top: -100px !important" align="center" >CREA L'ALLENAMENTO</button></a>
                    </div>

                    
                    <h1 class="text-justify">Crea il tuo allenamento</h1><br>
                    <p class="text-justify">Parti dalla base per raggiungere i tuoi obiettivi</p><br>
                        <ul class="text-justify">
                            <li><h3>Intuitivo</h3></li>
                            <li><h3>Immediato</h3>
                                <ul class="list-unstyled">
                                    <li><h3>Facile da creare</h3></li>                                    
                                </ul>
                            </li>
                            <li><h3>Spiegazione accurata</h3></li>
                        </ul>                    
                </div>
                <hr>
                <br>
                <br>
                <div class="post">
                    <img src="media/your_sport_1400x600-111003.jpg" width="90%"/><br>
                    <br><a href="cercaPalestre.jsp"><button type="button" class="btn btn-info btn-lg" style="margin-top: -150px !important"class="center-block" align="center" >TROVA LA PALESTRA ADATTA</button></a>
                    <br><br>
                </div>

            </div>                
        </div>
        <br>
        <br><br>

        <footer class="container-fluid text-center"> 
            <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>                    
        </footer> 
    </body> 
</html> 