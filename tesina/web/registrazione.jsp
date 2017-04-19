<%-- 
    Document   : registrazione
    Created on : 20-mar-2017, 11.41.01
    Author     : iti5a07
--%>
<%@include file="connessione.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gym Mate</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="cssTesina2.css">
        <link href="index.html">
        <script src="jquery-3.1.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>     
    </head>
    <body>

        <div id="wrapper">
            <form id="loginWindow" method="POST" action="insert.jsp">
                <div class="page-header">
                    <p class="left">
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                    </p>
                    <h1>Registrati</h1>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Username</span>
                    <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" name="usr">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">Password</span>
                    <input type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon2" name="passwd">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Nome</span>
                    <input type="text" class="form-control" placeholder="nome" aria-describedby="basic-addon1" name="name">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Cognome</span>
                    <input type="text" class="form-control" placeholder="cognome" aria-describedby="basic-addon1" name="surnm" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Email</span>
                    <input type="text" class="form-control" placeholder="email" aria-describedby="basic-addon1" name="email">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Città</span>
                    <input type="text" class="form-control" placeholder="città" aria-describedby="basic-addon1" name="ct">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Data di nascita</span>
                    <input type="text" class="form-control" placeholder="date" aria-describedby="basic-addon1" name="date">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Codice Fiscale</span>
                    <input type="text" class="form-control" placeholder="codf" aria-describedby="basic-addon1" name="codf">
                </div>
                
                <a href="index.html"><button class="btn btn-primary" type="submit">Submit</button></a>
            </form>
        </div>
        
        
        
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="jsGym.js"></script>

    </body>
</html>

