<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Registros</title>
        <link rel="stylesheet" href="estilos.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav>
                <a href="index.html">Inicio</a>
                <a href="sesion.html">Iniciar Sesion</a>
                <a href="#">Carrito de Compras</a>
                <a href="consulta.jsp" >Consulta General Acerca de las Cuentas</a>
            </nav>
            <section class="textos-header">
                <h1>Actualización de Datos</h1>
                <h2>Ninguna receta permanece igual por mucho tempo, así como tus datos, actualiza cada que sea necesario</h2>
            </section>
            <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
        </header>
        <div class="contenedor">
            <%
                Connection con = null;
                Statement set = null;
                ResultSet rs = null;
                String url, userName, password, driver;
                url = "jdbc:mysql://localhost/examen";
                userName = "root";
                password = "3123";
                driver = "com.mysql.jdbc.Driver";

                try{
                    Class.forName(driver);
                    con = DriverManager.getConnection(url, userName, password);
                    try{
                        int id = Integer.parseInt(request.getParameter("id"));

                        String nombre, apellidoP, apellidoM, edad, fechaN, domicilio, telP, cel;

                        nombre = request.getParameter("nombre");
                        apellidoP = request.getParameter("apellidoP");
                        apellidoM = request.getParameter("apellidoM");
                        edad = request.getParameter("edad");
                        fechaN = request.getParameter("fechaN");
                        domicilio = request.getParameter("domicilio");
                        telP = request.getParameter("telP");
                        cel = request.getParameter("cel");

                        String q = "UPDATE mregistro set nom_usu = '"+nombre+"', apat_usu = '"+apellidoP+"', amat_usu = '"+apellidoM+"', edad_usu = '"+edad+"', fechanac_usu = '"+fechaN+"', dom_usu = '"+domicilio+"', telp_usu = '"+telP+"', cel_usu = '"+cel+"'where id_usu = "+id+"";

                        set = con.createStatement();

                        set.executeUpdate(q);

            %>

                        <h1>Registro Actualizado con Exito</h1>

            <%     
                        set.close();    

                    }catch(SQLException ed){
                        System.out.println("Error al actualizar el dato");
                        System.out.println(ed.getMessage());
            %>

                        <h1>Registro No es posible Actualizarlo con Exito, juguito contigo</h1>

            <% 

                    }
                    con.close();

                }catch(Exception e){
                    System.out.println("Error al conectar con la bd");
                    System.out.println(e.getMessage());
                    System.out.println(e.getStackTrace());
            %>

                        <h1>Sitio en construcción</h1>

            <%

                }
            %>
        </div>
        <footer>
            <div class="contenedor-footer">
                <div class="content-foo">
                    <h4>Andrade Aguilar Arturo Imanol</h4>
                    <p>Arthur18aa</p>
                </div>
                <div class="content-foo">
                    <h4>Juarez Diaz Isaac Uriel</h4>
                    <p>Isaaacu23</p>
                </div>
                <div class="content-foo">
                    <h4>López Bastida Cesar Ricardo</h4>
                    <p>CesaRLB</p>
                </div>
                <div class="content-foo">
                    <h4>Castilla García Alejandro</h4>
                    <p>C4stilla</p>
                </div>
            </div>
            <h2 class="titulo-final">&copy; C4stilla Design | Castilla García Alejandro</h2>
        </footer>
    </body>
</html>
