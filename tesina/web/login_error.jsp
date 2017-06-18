<%@include file="include/connessione.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<%  String Username = null;
    String Password = null;

    Statement st = null;
    String query = null;
    ResultSet rs = null;
    String UtenteEsiste = null;
%>

<%
    Username = request.getParameter("usr");
    Password = request.getParameter("passwd");

    if (request.getParameter("xsubmit") != null) {

        try {
            st = con.createStatement();

            query = "SELECT * FROM \"Utente\" a WHERE \"Username\" = '" + Username + "' AND \"Password\" = '" + Password + "' ";

            rs = st.executeQuery(query);

            if (rs.next()) {
                UtenteEsiste = rs.getString("Nome");
                //session.setAttribute("Utente", rs.getString("Codice_Fiscale"));
                session.setAttribute("Utente", UtenteEsiste);
                session.setAttribute("CodiceFiscale", rs.getString("Codice_Fiscale"));
                response.sendRedirect("account.jsp");

            } else {

                response.sendRedirect("login_error.jsp");
            }
        } catch (SQLException e) {
            session.setAttribute("errore", "Login fallito");
        } finally {
            rs.close();
            st.close();
            con.close();
        }
        out.print(UtenteEsiste);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Gym Mate</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/cssTesina2.css">
        <script src="jquery-3.1.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>     
    </head>
    <link rel="icon" href="muscle.png">
    <body>

        <div id="wrapper">

            <form id="loginWindow" method="POST">
                <div class="page-header">
                    <p class="left">
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                    </p>
                    <h1>Accedi</h1>
                </div>
                <div class="input-group has-error has-feedback">
                    <span class="input-group-addon" id="basic-addon1">Username</span>
                    <input type="username" class="form-control" placeholder="Username" aria-describedby="basic-addon2" name="usr" id="inputError2">
                    <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                </div>
                <div class="input-group has-error has-feedback">
                    <span class="input-group-addon" id="basic-addon2">Password</span>                  
                    <input id="inputError2"type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon2" name="passwd">
                    <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                </div>
                
                <button class="btn btn-primary" type="submit" name ="xsubmit">Submit</button>
            </form>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/jsGym2.js"></script>
    </body>
</html>
