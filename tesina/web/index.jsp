<!DOCTYPE html> 
<html lang="en"> 
    <head> 
        <!--%@include file="include/connessione.jsp"%-->
        <title>Gym Mate</title> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <link rel="stylesheet" href="css/cssTesina.css"> 
        <link href="js/jsGym.js"> 
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
                    <a class="navbar-brand" href="index.jsp">Gym mate</a> 
                </div> 
                <div class="collapse navbar-collapse" id="myNavbar"> 
                    <ul class="nav navbar-nav"> 
                        <li class="active"><a href="index.jsp">Home</a></li> 
                        <li><a href="allenamento.jsp">Allenamento</a></li> 
                        <li><a href="cercaPalestre.jsp">Cerca palestre</a></li> 
                        <li><a href="esercizi.jsp">Esercizi</a></li> 
                    </ul> 
                    <ul class="nav navbar-nav navbar-right"> 
                        <li><a href="registrazione.jsp"><span class="glyphicon glyphicon-user"></span> Registrati</a></li> 
                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Accedi</a>                         
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

        <div class="container"><br> 
            <div class="well text-center"> 
                <h1>Gym Mate</h1><br><br> 
                <h2>Piani nutrizionali, schede, consigli del giorno e valutazione del tuo allenamento : Gym Mate ti aiuterà a raggiungere i tuoi obiettivi rapidamente e vivere una vita più sana</h2>


                <br><h2>Siamo qui per aiutarti a crescere.</h2><br>
                <div class="row">
                    <div class="col-md-4"><BR><img src="media/burn.png"width="50%"/><br><br>BRUCIA GRASSI</div>

                    <div class="col-md-4"><br><img src="media/build.png" width="50%"/><br><br>COSTRUISCI SANO IL TUO CORPO</div>
                    <div class="col-md-4"><br><img src="media/transform.png" width="50%"/><br><br>MANTIENI LA FORMA</div>

                </div>
                <br><br><br><br><br><br><br><br>
                <h2>Notizie recenti</h2>
                <hr>
                <h3>Mal di schiena e BodyBuilding</h3>
                <p>Mal di schiena: le cause di dolori, debolezze e problemi di varia natura alla schiena possono essere dovute a numerosi e differenti fattori, per questo spesso nel trattare la patologia intervengono varie figure professionali (fisioterapisti, osteopati, medici ortopedici). Chi pratica bodybuilding sottopone la schiena a una serie di sollecitazioni che possono dare origine a dolori e fastidi, qualora non si mantenga la giusta postura e non si distribuiscano lo sforzo e il peso in modo omogeneo e regolare tra i [...]</p>
                <hr>
                <h5><span class="glyphicon glyphicon-time"></span> Post by Faizzio Faizz, Settembre 24, 2016.</h5>
                <h5><span class="label label-success">Lorem</span></h5><br>

                <h4>Lasciaci un commento:</h4>
                <form role="form">
                    <div class="form-group">
                        <textarea class="form-control" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Invia</button>
                </form>
                <br><br>

                <p><span class="badge">2</span>Commenti:</p><br>

                <div class="row">
                    <div class="col-sm-2 text-center">
                        <img src="media/bandmember.jpg" class="img-circle" height="65" width="65" alt="Avatar">
                    </div>
                    <div class="col-sm-10">
                        <h4>Anja <small>Sep 29, 2015, 9:12 PM</small></h4>
                        <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <br>
                    </div>
                    <div class="col-sm-2 text-center">
                        <img src="media/bird.jpg" class="img-circle" height="65" width="65" alt="Avatar">
                    </div>
                    <div class="col-sm-10">
                        <h4>John Row <small>Sep 25, 2015, 8:25 PM</small></h4>
                        <p>I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <br>
                        <p><span class="badge">1</span> Comment:</p><br>
            </div>
        </div>
    </div>



    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <h3>Registrati per ottenere il meglio dal sito!</h3>
</div> 

</div> 
<br>
<br><br>

<footer class="container-fluid text-center"> 
    <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
    <hr>
</footer> 
</body> 
</html> 