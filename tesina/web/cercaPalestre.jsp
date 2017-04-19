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
                    <a class="navbar-brand" href="index.jsp">Gym mate</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li class="active"><a href="cercaPalestre.jsp">Cerca palestre</a></li>
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
            <p>trova la palestra adatta a te e inizia subito ad allenarti</p><br><br><br>
        </div>

        <div class="container"><br>

            <div class="well">                
                <h2>Cerca la palestra più vicina a te</h2>
                <br>
                <style>
                    /* Always set the map height explicitly to define the size of the div
                     * element that contains the map. */
                    #map {
                        height: 400px;
                        width: 100%;
                    }

                </style>
                <div id="map"></div>
                <script>

                    function initMap() {

                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 11,
                            center: {lat: 45.9914453, lng: 11.262121900000011}
                        });

                        // Create an array of alphabetical characters used to label the markers.
                        var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

                        // Add some markers to the map.
                        // Note: The code uses the JavaScript Array.prototype.map() method to
                        // create an array of markers based on a given "locations" array.
                        // The map() method here has nothing to do with the Google Maps API.
                        var markers = locations.map(function (location, i) {
                            return new google.maps.Marker({
                                position: location,
                                label: labels[i % labels.length]
                            });
                        });

                        // Add a marker clusterer to manage the markers.
                        var markerCluster = new MarkerClusterer(map, markers,
                                {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
                    }
                    var locations = [
                        {lat: 45.995794, lng: 11.254286},
                        {lat: 45.988698, lng: 11.300640},
                        {lat: 46.069282, lng: 11.237296},
                        {lat: 46.069079, lng: 11.235836},
                        {lat: 46.094498, lng: 11.109870},
                        {lat: 46.092993, lng: 11.117968}
                    ]
                </script>
                <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
                </script>    
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg1wXIFzFKqNoyFFqdQ7vZwMZAT201ioc&callback=initMap">
                </script>

                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <h1>Cerca la palestra più vicina a te</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-3">
                            <form action="" class="search-form">
                                <div class="form-group has-feedback">
                                    <label for="search" class="sr-only">Cerca</label>
                                    <input type="text" class="form-control" name="search" id="search" placeholder="search" name="src">
                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            </div>
        </div><br><br>
        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>
    </body>
</html>
