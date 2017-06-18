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
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
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
                    <a class=" bold navbar-brand" href="index.jsp">Gym mate</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="allenamento.jsp">Allenamento</a></li>
                        <li class="active"><a href="cercaPalestre.jsp">Cerca palestre</a></li>
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

        <div class="jumbotron text-center">
            <h1>Cerca Palestre</h1><br>
            <p>trova la palestra adatta a te e inizia subito ad allenarti</p><br><br><br>
        </div>

        <div class="container"><br>
            <div class="well">                
                <h2 class="bold">Cerca la palestra più vicina a te</h2>
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

                    // Try HTML5 geolocation.

                    var marker;
                    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                    var locations = [

                        {lat: 45.995794, lng: 11.254286},

                        {lat: 45.988698, lng: 11.300640},

                        {lat: 46.069282, lng: 11.237296},

                        {lat: 46.069079, lng: 11.235836},

                        {lat: 46.094498, lng: 11.109870},

                        {lat: 46.092993, lng: 11.117968}

                    ]

                    function initMap() {

                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 11,
                            center: {lat: 45.9914453, lng: 11.262121900000011}
                        });

                        marker = new google.maps.Marker({
                            map: map,
                            draggable: true,
                            animation: google.maps.Animation.DROP,
                            position: {lat: 45.995794, lng: 11.254286}

                        });
                        marker.addListener('click', toggleBounce);




                        if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function (position) {
                                var pos = {
                                    lat: position.coords.latitude,
                                    lng: position.coords.longitude
                                };

                                infoWindow.setPosition(pos);
                                infoWindow.setContent('Location found.');
                                infoWindow.open(map);
                                map.setCenter(pos);
                            }, function () {
                                handleLocationError(true, infoWindow, map.getCenter());
                            });
                        } else {
                            // Browser doesn't support Geolocation
                            handleLocationError(false, infoWindow, map.getCenter());
                        }
                    }


                    function toggleBounce() {
                        if (marker.getAnimation() !== null) {
                            marker.setAnimation(null);
                        } else {
                            marker.setAnimation(google.maps.Animation.BOUNCE);
                        }
                    }


                </script>
                <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
                </script>    
                <script async defer
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg1wXIFzFKqNoyFFqdQ7vZwMZAT201ioc&callback=initMap">
                </script>
                <br><br><br>
                <form method="get" >
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="search">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">

                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th> Nome </th>
                                        <th> Telefono </th>
                                        <th> Costo </th>
                                        <th> Orario </th>
                                        <th> Indirizzo </th>
                                    </tr>
                                </thead>
                                <tbody> 
                                    <% String rog = "Select * From \"Palestra\" WHERE \"Nome\" like '%" + request.getParameter("search") + "%'";
                                        Statement b = con.createStatement();
                                        ResultSet re = b.executeQuery(rog);

                                        while (re.next()) {

                                    %>
                                    <tr>                                
                                        <td> <%= re.getString("Nome")%> </td>
                                        <td> <%= re.getString("Telefono")%> </td>
                                        <td> <%= re.getString("Costo")%> € </td>
                                        <td> <%= re.getString("Orario")%> </td>

                                        <td> <%= re.getString("Indirizzo")%> </td>
                                
                                <td><button type="submit" class="btn btn-secondary, glyphicon glyphicon-heart-empty" name="sub" value="Id_Cerca"></button></td>

                                </tr>
                                <%}%>
                                </tbody> 
                            </table>

                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </form>


            </div>

            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </div><br><br>
    <footer class="container-fluid text-center">
        <p>Creato e ideato da Andrea Marchesoni 5AIN ©</p>
    </footer>
</body>
</html>
