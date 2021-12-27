<%-- 
    Document   : menu
    Created on : 26 dic. 2021, 14:23:55
    Author     : diego
--%>

<%@page import="Controlador.Enrutador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <% HttpSession sesion=request.getSession(false);
 String usuario=(String)sesion.getAttribute("usuario");
     Enrutador sesionUsuario=null;
  if(sesion.equals("")){
    response.sendRedirect("index.jsp");
  
 }
 %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Migario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/estilo.css">
      
    </head>
    <body>
        <div class="container">
    <header class="d-flex  fixed-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="menu.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <span class="fs-4" style="font-family:  ">MIGARIO</span>
      </a>
      <ul class="nav nav-pills">
         <li class="nav-item"><a href="menu.jsp" class="nav-link text-dark">Pagina principal</a></li>
  
         <li class="nav-item"><a href="index.jsp" class="nav-link text-dark"> <% out.println("Accdedio como " +usuario); %></a></li>
        
          </ul>
    </header>
  </div>
    
<div id="propuesta">
  <div class="card bg-dark text-white justify-content-center py-3 mb-4">
  <img src="https://pixabay.com/get/gf09391e5d042ec9c05f32d0644e23b8e47d3d6e0afacf5ebeb7d501fac08f6e4d8d5d0da78ad1d4cd6e8291095b6e069143bc47a051a6fe810634ab43f890aa0_1920.jpg" class="card-img" alt="...">
  <div id="textocard" class="card-img-overlay">
          <h2 pclass="card-title">Aprender el arte del origami</h2>
    <p class="card-text">Inicie sesion para conocer todas las propuestas </p>
  </div>
  </div>
</div>
    </body>
</html>
