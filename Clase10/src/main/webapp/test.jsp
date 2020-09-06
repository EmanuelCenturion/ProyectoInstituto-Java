
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% final double PI=3.14; %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <!-- Bloque de comentarios -->
        
        <% 
            //Código JSP    JAVA
            System.out.println("1 - Hola Mundo!!!");
            out.print("<h2>2 - Hola Mundo!!!</h2>");
            
            String texto="JSP";
            {
                String texto2="Hola";
                out.print(texto2);
            }
            //out.print(texto2);
        %>
        <br>
        <% 
            out.print(texto);
        
            List<String>lista=new ArrayList();
            lista.add("Primavera");
            lista.add("Verano");
            lista.add("Otoño");
            lista.add("Invierno");
            lista.forEach(System.out::println);
            for(String st:lista) out.println("<br>"+st+"<br>");

      
        %>
        
        <form method="post">
            Nombre:<input type="text" name="nombre"/>
            <input type="submit" value="Enviar"/> 
        </form>
        
        <%
            try{
                String nombre=request.getParameter("nombre");
                if(nombre!=null || !nombre.isEmpty()){
                    out.println("<h3>Hola "+nombre+"</h3>");
                }
            }catch(Exception e){
                
            }    
        %>
        
        
        <% 
            try{
                String hora=request.getParameter("hora"); //hora=si
                if(hora!=null && hora.equalsIgnoreCase("si")){
                    LocalDateTime ldt=LocalDateTime.now();
                    out.println("<h3>"+ldt.toString()+"</h3>");
                }
            }catch(Exception e){
                
            }   
        %>
    </body>
</html>
