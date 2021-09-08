<%-- 
    Document   : Listar
    Created on : 7/09/2021, 7:11:19 p. m.
    Author     : USER
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Personas</h1>
            <table border="1" >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CEDULA</th>
                        <th>NOMBRES</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    }
                %>
                <tbody>
                    <tr>
                        <td><%=per.getId() %></td>
                        <td><%=per.getDni()%></td>
                        <td><%=per.getNom()%></td>
                        <td>
                            <a>Editar</a>
                            <a>Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
