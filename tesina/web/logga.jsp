<%@include file="connessione.jsp"%>

<%!
    String usr, passwd;%>

<%    String sql = "SELECT * FROM (\"Utente\" where  \"Password\"=? and \"Username\"=?)";
    
    usr = request.getParameter("usr");
    passwd = request.getParameter("passwd");
    
    if (usr.equals("admin") && passwd.equals("admin")) {
        response.sendRedirect("account.jsp");
    }

%>
