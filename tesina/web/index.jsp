<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gym Mate</title>
        <% pageContext.include("include/header.jsp");  %>
        <!-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
        
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
                min-height:400px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 400px) {
                .carousel-caption {
                    display: none;
                }
            }
        </style>
        <link rel="icon" href="imgres.jpg">
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

        <div id="corpo">    
            <div id="corpoWindow">
                <h1>News della settimana</h1>
                <h5>27/03/17</h5>
                <p>Testo...

                <h1></h1>
                <h5>05/03/17</h5>
                <p>Testo...
            </div><br><br><br><br>
        </div>   

        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>

    </body>
</html>