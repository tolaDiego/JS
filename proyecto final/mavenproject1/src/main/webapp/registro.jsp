<%-- 
    Document   : registro
    Created on : 26 dic. 2021, 01:00:11
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
        
            
        <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="menu.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
    
        <span class="fs-4" style="font-family:Fantasy; ">MIGARIO</span>
      </a>
      <ul class="nav nav-pills">
         <li class="nav-item"><a href="menu.jsp" class="nav-link text-dark">Pagina principal</a></li>
        <li class="nav-item"><a href="index.jsp" class="nav-link text-dark">Iniciar sesion</a></li>
      </ul>
    </header>
  </div>
        <div id="formularioRegistro">
        <h1>Llenar formulario de registro</h1>
        <form class="row g-4 " action="NuevoUsuario"method="post">
            <div class="col-md-9">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" name="mail"class="form-control" id="inputEmail4">
            </div>
            <div class="col-9">
                <label for="inputAddress" class="form-label">Nombre se usuario</label>
                <input type="text" name="nombre"class="form-control" id="inputAddress" >
            </div>
            <div class="col-md-9">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="password" name="pass"class="form-control" id="inputPassword4">
            </div>
            <br>
            <div class="col-9">
                <button type="submit" value="registrar"class="btn btn-primary">Registrar</button>
            </div>
        </form>
        </div>
    </body>
</html>
