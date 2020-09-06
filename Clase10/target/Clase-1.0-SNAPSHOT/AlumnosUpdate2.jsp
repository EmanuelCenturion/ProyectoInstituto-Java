<%@page import="ar.com.emanuelcenturion.curso.java.entities.Alumno"%>
<%@page import="ar.com.emanuelcenturion.curso.java.repositories.jdbc.AlumnoRepository"%>
<%@page import="ar.com.emanuelcenturion.curso.java.repositories.interfaces.I_AlumnoRepository"%>
<%@page import="ar.com.emanuelcenturion.curso.java.connector.Connector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%I_AlumnoRepository ar = new AlumnoRepository(Connector.getConnection()); %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos Update</title>
    </head>
    <body>
        <h1>Alumnos Update</h1>
        <%
            Alumno alumno=new Alumno(
                    //Integer.parseInt(request.getParameter("id")),
                    request.getParameter("nombre"),
                    request.getParameter("apellido"),
                    Integer.parseInt(request.getParameter("edad")),
                    Integer.parseInt(request.getParameter("idCurso"))
            );
            ar.update(alumno);
        %>
        <h3>Se actualizo un alumno!</h3>
        <form action="Alumnos.jsp">
            <input type="submit" value="Volver"/>                    
        </form>
    </body>
</html>

