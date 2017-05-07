<%-- 
    Document   : tableP.jsp
    Created on : 7-mag-2017, 20.39.12
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cercaPalestre.jsp" %>




<%@ page language="java" %>
<head>
<title>Tabella di output</title>
</head>
<body>
<table>
<%
int offset = Integer.parseInt(request.getParameter("parametro"));
for (int j = 0; j < offset; j++)
{
%>
<tr><td>Riga N° <% out.println(j+1); %> </td></tr>
<%
}
%>
</table>

<%  
    String query = "Select * From \"Palestra\" ";
    Statement b = con.createStatement();
    ResultSet re = b.executeQuery(query);

    while (re.next()) {


%>
<tr>                                
    <td> <%= re.getString("Nome")%> </td>
    <td> <%= re.getString("Telefono")%> </td>
    <td> <%= re.getString("Costo")%> </td>
    <td> <%= re.getString("Orario")%> </td>
    <td> <%= re.getString("Voto")%> </td>
    <td> <%= re.getString("Indirizzo")%> </td> 
</tr>
<%

                                        }%>

</body>
</html>



