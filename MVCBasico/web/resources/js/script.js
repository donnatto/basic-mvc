var variableGlobal;
function validar(){
   var correo, clave,expresion,aceptar;
      
   expresion= /\w+@\w+\.+[a-z]/;
   correo = document.getElementById("txtCorreo").value;
   clave = document.getElementById("txtClave").value;
   aceptar = document.getElementById("chkAceptar").checked;
   
   if(correo === ""){      
        alertify.alert('Mensaje Personalizado', 'El campo correo no puede estar vacío!');
        return false;
   } 
   else if(correo.length<=3){
       alert("La longitud del correo es muy corta");
        return false;
       
   }
   else if(!expresion.test(correo)){
       alert("Ingresa una dirección de correo válida");
        return false;  
   }
    
   if(clave === ""){
      alert("El campo clave no puede estar vacío");
      return false; 
   } 
   else if(isNaN(clave)){
      alert("Clave tiene que ser solo números"); 
      return false; 
   }

    
  if(!aceptar){
      alert("Deberá aceptar los terminos y condiciones del contrato"); 
      return false;
      
  }  
}
