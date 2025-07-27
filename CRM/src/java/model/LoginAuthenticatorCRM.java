/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.CRMuserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rahul Sharma
 */
public class LoginAuthenticatorCRM {
    public boolean isLogin(CRMuserDTO user)
    {
        String email=user.getEmail();
        String password=user.getPassword();
        String role = user.getRole();
        String tablepassword="";
        try{
            Statement st=DBConnector.getStatement();
            String query="select Password from signupp where email='"+email+"'";
            ResultSet rs=st.executeQuery(query);
            
        if(rs.next())
        {
            tablepassword=rs.getString(1);
       }
        else{
              return false;
           }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(email!=null && password!=null &&  password.equals(tablepassword))
        {
            
            return true;
        }
       
            return false;
        
    }
    
}

