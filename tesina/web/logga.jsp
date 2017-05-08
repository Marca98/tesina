<%@include file="connessione.jsp"%>

<%    
    String sql = "SELECT * FROM (\"Utente\" WHERE  \"Password\"=? and \"Username\"=?)"
            + "VALUES(\'"            
            + "\', \'" + request.getParameter("usr")
            + "\' , \'" + request.getParameter("passwd") + "\')";

    stat.executeUpdate(sql);
    response.sendRedirect("account.jsp");

%>
