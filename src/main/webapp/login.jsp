<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Darío Vera García">
 

<!-- Bootstrap CSS 5.1.3-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>

body{
background-image: linear-gradient(to right, #00ffff , #e5e8e8);
}

</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#0e2222;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="/AA_Prueba_ProductosDeLimpieza">Inicio</a>
        </li>
        <li class="nav-item">
         <a class="nav-link active text-white" href="login">Portal</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="p-5 text-blakc text-center">
<h1>BIENVENIDOS AL PORTAL DE USUARIOS</h1>
<h3>Sistema Productos de Limpieza ULTRACLEAN</h3>
</div>

<br>
<br>

 <div class="container">
 	<c:if test="${msgError !=null }">
 		<div class="alert alert-danger" role="alert">
 			<c:out value="${msgError}"></c:out> <!-- Captura el dato y lo imprime -->
	  	</div>
	</c:if>
 <h1>Formulario de Ingreso</h1>
        <form action="procesaLogin" method="post">
            <label for="login" class="form-label">Usuario:</label>
            <input type="text" class="form-control" id="login" name="login" placeholder="Ingresa tu usuario"><br>
            <label for=" password" class="form-label">Contraseña:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu contraseña"><br>

            <br>

            <!--botones-->
            <button type="submit" class="btn btn-dark mb-4 p-2">Ingresar</button>

        </form>
    </div>


<!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js " integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p " crossorigin="anonymous "></script>

 
</body>

</html>