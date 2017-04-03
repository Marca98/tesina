<%-- 
    Document   : schede
    Created on : 27-mar-2017, 11.35.39
    Author     : iti5a07
--%>

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
        <link rel="stylesheet" href="cssTesina.css">
        <link href="jsGym.js">
    </head>
    <link rel="icon" href="muscle.png">
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
                        <li><a href="index.html">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li class="active"><a href="cercaPalestre">Cerca palestre</a></li>
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

        <div class="jumbotron text-center">
            <h1>Cerca Palestre</h1><br>
            <p>trova la tua palestra preferita e inizia subito ad allenarti</p><br><br><br>
        </div>

        <div class="container"><br>

            <div class="well">
                <style>
                    #map {
                        height: 300px;
                        width: 100%;
                    }
                </style>

                <h2>Cerca la palestra più vicina a te</h2>
                <div id="map"></div>
                <script>
                    function initMap() {
                        var uluru = {lat: 45.991462, 11.261847};
                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 4,
                            center: uluru
                        });
                        var marker = new google.maps.Marker({
                            position: uluru,
                            map: map
                        });
                    }
                </script>
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg1wXIFzFKqNoyFFqdQ7vZwMZAT201ioc&callback=initMap">
                </script>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div><br><br>



        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>

    </body>
</html>
