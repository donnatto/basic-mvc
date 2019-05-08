/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */package com.miempresa.daos;

import com.miempresa.conexion.ConexionBD;
import com.miempresa.model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Alumno
 */
public class LoginDao {

    private static final String sql_login = "select * from usuario where correo=? and clave=? ";
    private static final String sql_recoveryPassword = "select * from usuario where correo=?";
    private static final String sql_register = "insert into usuario values(?,?)";
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;
    private static Integer res1 = null;
    private static ConexionBD con;

    public boolean validarLogin(Usuario usuario) {
        boolean result = false;
        try {
            //Establecer la conexion
            con = ConexionBD.instanciar();
            // Setear la consulta
            pstm = con.getCon().prepareStatement(sql_login);
            pstm.setString(1, usuario.getCorreo());
            pstm.setString(2, usuario.getClave());
            res = pstm.executeQuery();
            if (res.next()) {
                result = true;
            }

        } catch (Exception e) {
            System.out.println("Error validar login :"+e.getMessage());
            e.printStackTrace();
        }
        finally{        
            try {
                if(res!=null)res.close();
                if(pstm!=null)pstm.close();
                if(con!=null)con.cerrarConexion();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones");
            }           
        }
      return result;
    }
    
    public Usuario recuperarClave(String correo){
    
        Usuario usuario=null;
        
        try {
           con = ConexionBD.instanciar();
           pstm = con.getCon().prepareStatement(sql_recoveryPassword);
           pstm.setString(1, correo);
           res = pstm.executeQuery();
           while(res.next()){
             usuario = new Usuario(res.getString(2),res.getString(3));
             
           }
      
        } catch (Exception e) {
            System.out.println("Error :"+e.getMessage());
            e.printStackTrace();
        }
        finally{
            try {
                if(res!=null)res.close();
                if(pstm!=null)pstm.close();
                if(con!=null)con.cerrarConexion();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones");
            }
        }
    
        return usuario;
    
    }
    
    public boolean registrarUsuario(Usuario usuario){
        boolean result = false;
        
        try {
            con = ConexionBD.instanciar();
            pstm = con.getCon().prepareStatement(sql_register);
            pstm.setString(1, usuario.getCorreo());
            pstm.setString(2, usuario.getClave());
            res1 = pstm.executeUpdate();
            if (res1==1) {
                result = true;
            }
        } catch (Exception e) {
            System.out.println("Error :"+e.getMessage());
            e.printStackTrace();
        }
        finally{
            try {
                if(res1!=null)res.close();
                if(pstm!=null)pstm.close();
                if(con!=null)con.cerrarConexion();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones");
            }
        }
        return result;
    }

}
