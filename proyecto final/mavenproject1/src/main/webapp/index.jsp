<%-- 
    Document   : index
    Created on : 25 dic. 2021, 22:22:05
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="css/estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jscript.js"></script>
        <title>Migario</title>
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
        <div id="formularioInicio">
             <h1>Iniciar Sesion</h1>
        <form  class="row g-3" action="Iniciar" method="post" id="formInicio">
            <div class="col-12">
                <label for="usuario" class="form-label">Usuario</label>
                <input type="text" name="usuario" class="form-control" id="txtNombre" >
            </div>
            <div class="col-md-12">
                <label for="inputPassword4" class="form-label">Contraseña</label>
                <input type="password" name="pass" class="form-control" id="txtPass" >
            </div>
            <br>
            <div class="col-12">
                <button  type="submit" value="Iniciar Sesion"class="btn btn-primary" id="btnIniciar">Ingresar</button>
            </div>
        </form>
        <br>
         <p>No tiene una cuenta...<a href="registro.jsp">Registrarse</a></p>
        </div> 
        </body>
</html>
