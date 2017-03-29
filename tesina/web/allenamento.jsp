<%-- 
    Document   : allenamento
    Created on : 20-mar-2017, 12.22.35
    Author     : iti5a07
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Gym Mate</title>
        <% pageContext.include("include/header.jsp");  %>
        <!-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
    </head>
    <body>

        <nav class="navbar-default" >
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
                <h1>Programmi d'allenamento</h1>
                <h5>27/03/17</h5>
                <p>Testo...

                <h2>Schede per allenamento</h2>
                <h5>05/03/17</h5>
                <p>Testo...
            </div><br><br><br><br>
        </div>   

        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>

    </body>
</html>
