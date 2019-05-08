<%--
    Document   : index
    Created on : 28-mar-2019, 7:29:27
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
</head>

<body>
    <div class="container-fluid">
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/navbootstrap.jspf" %>
        <!--<h1>Bienvenido al Sistema</h1>-->
        <section>
            <div class="bd-example">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="carousel-item active">

                            <img src="resources/imgs/imagen1.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="resources/imgs/imagen2.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="resources/imgs/imagen3.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

        </section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <%@include file="WEB-INF/jspf/scripts.jspf" %>
    </div>
</body>

</html>