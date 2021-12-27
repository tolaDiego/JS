/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
window.addEventListener("load",function (){
    document.getElementById("btnIniciar").addEventListener("click",function(){
    var nombre=document.getElementById("txtNombre").value;
    var contraseña=document.getElementById("txtPass").value;

    if(nombre.length>0 && contraseña.length>0){
          
        document.getElementById("formInicio").submit();
    }
else{
        alert("Llene todos los campos con los datos correctos");
    }
    });
});


