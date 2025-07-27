/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnectorSign;
import dto.CRMSignDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rahul Sharma
 */
public class CRMSignupAuthenticator 
{
   
    public boolean isSign(CRMSignDTO use)
    {
         String name = use.getName();
         String contact = use.getContact();
         String email= use.getEmail();
         String password = use.getPassword();
         String role= use.getRole();
        
         try
         {
               Statement st = DBConnectorSign.getStatement();
               String Query ="insert into signupp ('"+name+"','"+email+"','"+password+"','"+contact+"','"+role+"')";
            System.out.println(Query);
            int i = st.executeUpdate(Query);
            if(i>0)
            {
                System.out.println(i+" inserted");
                return true;
            }
            else
            {
                System.out.println("not inserted");
                return false;
            }
           
           // con.close();

        }
        catch (SQLException e)
        { 
            System.out.println(e);
        }
      //  return false;
        return false;
    }
}
