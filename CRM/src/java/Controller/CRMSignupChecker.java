/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dto.CRMSignDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CRMSignupAuthenticator;

/**
 *
 * @author Rahul Sharma
 */
public class CRMSignupChecker extends HttpServlet 
{
     @Override
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {

       response.sendRedirect("signup.html");
       
    }
   
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {   String name = request.getParameter("name");
        String  contact = request.getParameter("contact");
        String role  = request.getParameter("role");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        CRMSignDTO use = new CRMSignDTO();
        use.setName(name);
        use.setContact(contact);
        use.setEmail(email);
        use.setPassword(password);
        use.setRole(role);
       
        CRMSignupAuthenticator user = new CRMSignupAuthenticator();
       boolean sign = user.isSign(use);
       
       if(sign)
       { 
          HttpSession session = request.getSession(true);
          session.setAttribute("name" ,name);
          session.setAttribute("role", role);
           response.sendRedirect("welcome.jsp");
       }
       else
       {
           response.sendRedirect("signup.html");
           
       }
    
    }

   
}