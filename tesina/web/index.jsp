
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
                    <a class="navbar-brand" href="#">Gym mate</a> 
                </div> 
                <div class="collapse navbar-collapse" id="myNavbar"> 
                    <ul class="nav navbar-nav"> 
                        <li class="active"><a href="index.html">Home</a></li> 
                        <li><a href="allenamento.jsp">Allenamento</a></li> 
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li> 
                        <li><a href="contatti.jsp">Contatti</a></li> 
                    </ul> 
                    <ul class="nav navbar-nav navbar-right"> 
                        <li><a href="registrazione.jsp"><span class="glyphicon glyphicon-user"></span> Registrati</a></li> 
                        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Accedi</a>                         
                        </li> 
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
                    <img src="Gym-HD-Wallpaper.jpg" alt="Image"> 
                    <div class="carousel-caption"> 
 
                    </div>       
                </div> 
 
                <div class="item"> 
                    <img src="Gym-Wallpaper-.jpg" alt="Image"> 
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
 
        <div class="container"><br> 
            <div class="well text-center"> 
                <h1>Gym Mate</h1><br><br> 
                <h2>Piani nutrizionali, centinaia di schede, consigli del giorno e valutazione del tuo allenamento : Gym Mate ti aiuter� a raggiungere i tuoi obiettivi rapidamente e vivere una vita pi� sana</h2> 
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> 
            </div> 
 
        </div> 
        <br><br> 
 
        <footer class="container-fluid text-center"> 
            <p>Footer Text</p> 
        </footer> 
    </body> 
</html> 