<%@include file="connessione.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gym Mate</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="cssTesina2.css">
        <script src="jquery-3.1.1.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>     
    </head>
    <link rel="icon" href="muscle.png">
    <body>
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

                    query = "SELECT \"Username\" FROM \"Utente\" a WHERE \"Username\" = '" + Username + "' AND \"Password\" = '" + Password + "' ";

                    rs = st.executeQuery(query);

                    if (rs.next()) {
                        UtenteEsiste = rs.getString("Username");
                        //session.setAttribute("Utente", rs.getString("Codice_Fiscale"));
                        request.getSession().setAttribute("Codice_Fiscale", "Utente");
                        
                    } else {
                        
                        response.sendRedirect("login.jsp");
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
        <div id="wrapper">

            <form id="loginWindow" method="POST" action="account.jsp">
                <div class="page-header">
                    <p class="left">
                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                    </p>
                    <h1>Accedi</h1>
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Username</span>
                    <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" name="usr">
                </div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">Password</span>
                    <input type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon2" name="passwd">
                </div>
                <button class="btn btn-primary" type="submit" name ="xsubmit">Submit</button>
            </form>

        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="jsGym2.js"></script>
    </body>
</html>

