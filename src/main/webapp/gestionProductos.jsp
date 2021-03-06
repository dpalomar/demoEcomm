<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.util.Collection"%>
<%@ page import = "Cliente.Dominios.productoDominio"%>
<%
	Collection<productoDominio> list = (Collection<productoDominio>) request.getAttribute("listaProductos");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/icono.ico">
    <title>WALLAPOP: Gesti�n de productos</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/gestion.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>

  <body>
    <div class="container" id="container">
      <div class="header clearfix">
		<img src="images/logo.png" alt="Error en la imagen">
        <h2 class="text-muted">WALLAPOP</h2>
		<p>Encuentra tu producto ideal</p>
      </div>
      
      <nav>  
			<ul id="menu">
				<li><a href="inicioAdmin.jsp">Inicio</a></li>
			 	<li><a href="adminusuario">Gesti�n de usuarios</a></li>
			 	<li><a href="adminproducto">Gesti�n de productos</a></li>
			 	<li><a href="mensajes">Chat</a></li>
	 		</ul>
		</nav>
	  	  <table id="tablaGestion" class="table" >
	  <thead>
	  	<tr class="fila1"><td>Titulo</td><td>Categoria</td><td>Descripcion</td><td>Precio</td><td>Estado</td><td></td><td></td></tr>
	  </thead>
	  <tbody>
	  <% for(productoDominio prod : list) { %>
	  		<tr>
	  		 <td><%= prod.getTitulo() %></td>
	  		 <td><%= prod.getCategoria() %></td>
	  		 <td><%= prod.getDescripcion() %></td>
	  		 <td><%= prod.getPrecio() %></td>
	  		 <td><%= prod.getEstado() %></td>
	  		 <td>
	  		 	<a href="adminproducto?accion=editar&id=<%= prod.getId() %>">
	  		 		<button name="button" class="btn btn-warning">Modificar</button></a></td>
	  		 <td>
	  		 	<a href="adminproducto?accion=borrar&id=<%= prod.getId() %>">
	  		 		<button name="button" class="btn btn-warning">Borrar</button></a></td>
	  		</tr>
	  
	  
	  <% } %>
	  </tbody>
	  </table>
	  <p>
		<a class ="btn btn-info" href="javascript:history.go(-1)">Volver</a>
	</p>
	<div class="footer">
		<p>&copy; 2016 Wallapop, Inc.</p>
    </div>

    </div>  
  </body>
</html>