<%-- 
    Document   : login
    Created on : 28-mar-2019, 9:09:38
    Author     : Alumno
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Ventas</title>
        <!-- Incluir las etiquetas meta -->
        <%@include file="WEB-INF/jspf/meta.jspf" %>
        <!-- Incluir el segmento de estilos -->
        <%@include file="WEB-INF/jspf/styles.jspf" %>
        <script src="resources/js/script.js" type="text/javascript"></script>
    </head>
    <div class="container-fluid">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/navbootstrap.jspf" %>
        <!--<h1>Bienvenido al Sistema</h1>-->
        <section>
            <div class="row">

                <div class="col-12 col-lg-4"></div>
                <div class="col-12 col-lg-4">
                    <form action="nuevousuario.do" method="post" onsubmit="return validar();">
                        <div class="form-group">
                            <label for="txtCorreo">Email address</label>
                            <input type="email" class="form-control" id="txtCorreo" name="txtCorreo" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="txtClave">Password</label>
                            <input type="password" class="form-control" id="txtClave" name="txtClave" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Register</button>
                        
                    </form>
                </div>
                <div class="col-12 col-lg-4"></div>

            </div>
        </section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </div>
</html>
