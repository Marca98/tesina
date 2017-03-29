<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gym Mate</title>
        <% pageContext.include("include/header.jsp");  %>
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


        <div id="corpo">    
            <div id="corpoWindow">
                <h1>Cerca la palestra più vicina a te</h1>
                <!--<style>
                    /* Always set the map height explicitly to define the size of the div
                     * element that contains the map. */
                    #map {
                        height: 50%;
                        width: 100%;
                        padding-left:0px;
                    }
                    /* Optional: Makes the sample page fill the window. */
                    html, body {
                        height: 100%;
                        margin: 0px;
                        padding: auto;
                    }
                </style>

                <div id="map"></div>
                <script>
                    var map;
                    function initMap() {
                        map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: -34.397, lng: 150.644},
                            zoom: 8
                        });
                    }
                </script>
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALJ4LH7HQkKfqFW559E8VfoIWGLhD7ngY&callback=initMap"
                async defer></script>-->
            </div>  
        </div>

        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>
    </body>
</html>
