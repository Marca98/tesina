<%@include file="connessione.jsp"%>


<%  String userid = request.getParameter("usr");
    String pwd = request.getParameter("passwd");
    Class.forName("com.mysql.jdbc.Driver");
    Statement st = con.createStatement();
    ResultSet rs;
    
   

rs = st.executeQuery("SELECT \"Utente\" (\"Username\", \"Password\")=" + "Username" + "' and Password ='" + "passwd" + "'");
if (rs.next()) {
session.setAttribute("codf", "codf");
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("account.jsp");
} else {
out.println("Inv alid password <a href='registrazione.jsp'>try again</a>");
}
%>