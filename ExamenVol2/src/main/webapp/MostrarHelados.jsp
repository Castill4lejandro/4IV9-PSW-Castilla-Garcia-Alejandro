<%-- 
    Document   : MostrarHelados
    Created on : 11/06/2021, 07:54:21 PM
    Author     : C4stilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="Modelo.MProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%
    String usuario = "";
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario")==null){
        
        %>
    
        <jsp:forward page="index.html">
            <jsp:param name="error" value="Es obligatorio iniciar sesion" ></jsp:param>
        </jsp:forward>
        
        <%
    }else{
        //si hay una sesion
        usuario = (String)sesionusu.getAttribute("usuario");

    }
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cerrar sesion</h1>
        
        <h1>imprimir una tabla con todos los productos y eso ya se los enseñe</h1>
        <%
            Vector<MProducto> listaproductos = new MProducto().listaProductos();
            
            //recorrer ese vector
            for(MProducto producto : listaproductos){
                //imprimir producto por producto en la tabla y ya
            }
            %>
    </body>
</html>
