/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.RegisterBean;
import java.sql.*;
import util.DBConnection;
/**
 *
 * @author NewUser
 */
public class RegisterDao {
    public String registerUser(RegisterBean registerBean){
        PreparedStatement sql;
        String name = registerBean.getName();
        String email = registerBean.getEmail();
        String username = registerBean.getUsername();
        String password = registerBean.getPassword();
        
        Connection conn = null;
       
        
       
        
        try{
            conn = DBConnection.createConnection();
            sql = conn.prepareStatement("insert into USERS(USERNAME,PASSWORD,FULLNAME,EMAIL) VALUES(?,?,?,?)");
            
            sql.setString(1, username);
            sql.setString(2, password);
            sql.setString(3, name);
            sql.setString(4, email);
            sql.executeUpdate();
            return "SUCCESS";
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return "failed to register";
    }
}
