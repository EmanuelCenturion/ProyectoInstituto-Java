<%@page import="ar.com.emanuelcenturion.curso.java.connector.Connector"%>
<%@page import="ar.com.emanuelcenturion.curso.java.entities.Alumno"%>
<%@page import="ar.com.emanuelcenturion.curso.java.repositories.jdbc.AlumnoRepository"%>
<%@page import="ar.com.emanuelcenturion.curso.java.repositories.interfaces.I_AlumnoRepository"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%I_AlumnoRepository ar = new AlumnoRepository(Connector.getConnection()); %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Alumnos</title>
    </head>
    <body>
        <h1>Update Alumnos</h1>
        <% Alumno alumno = ar.getById(Integer.parseInt(request.getParameter("id"))); %>
        <table>
            <form action="AlumnosUpdate2.jsp"> 
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" value="<% out.print(alumno.getId()); %>" readonly/></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="Nombre" value="<% out.print(alumno.getNombre()); %>"/></td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td><input type="text" name="Apellido" value="<% out.print(alumno.getApellido()); %>" /></td>
                </tr>
                 <tr>
                    <td>Edad:</td>
                    <td><input type="text" name="Edad" value="<% out.print(alumno.getEdad()); %>" /></td>
                </tr>
                 <tr>
                    <td>IdCurso:</td>
                    <td><input type="text" name="IdCurso" value="<% out.print(alumno.getIdCurso()); %>" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Modificar"/></td>
                    <td>

                    </td>
                </tr>
            </form>
        </table>
        <form action="Alumnos.jsp">
            <input type="submit" value="Volver"/>                    
        </form>
    </body>
</html>

