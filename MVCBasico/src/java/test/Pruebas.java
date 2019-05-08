/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.miempresa.conexion.ConexionBD;
import com.miempresa.daos.LoginDao;
import com.miempresa.model.Usuario;

/**
 *
 * @author Alumno
 */
public class Pruebas {
    
    public static void main(String[] args) {
        String correo = "ivan@gmail.com";
       // Usuario usuario  = new Usuario("ivan2@gmail.com","123456");
        LoginDao login= new LoginDao();
        Usuario usuario = login.recuperarClave(correo);
        
        System.out.println(""+usuario.getCorreo());
        System.out.println(""+usuario.getClave());
      
     
        
        
    }
}
