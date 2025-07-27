/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dto.CRMuserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticatorCRM;

/**
 *
 * @author Rahul Sharma
 */
public class CRMLoginChecker extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.html");
    }
     
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       String role = request.getParameter("role");
         CRMuserDTO user=new CRMuserDTO();
         
         
       user.setEmail(email);
       user.setPassword(password);
       user.setRole(role);
       
       LoginAuthenticatorCRM l1=new LoginAuthenticatorCRM();
       boolean login = l1.isLogin(user);
       if(login)
       {
           HttpSession session=request.getSession(true);
           session.setAttribute("email", email);
           session.setAttribute("role", role);
           if(role.equals("user"))
           {
               response.sendRedirect("manu.jsp");
           }
           else if(role.equals("employee"))
           {
               response.sendRedirect("emp.jsp");
           }
          else
           {
               response.sendRedirect("userpage.jsp");
               
           }
//           response.sendRedirect("menu.jsp");
       }
       else
       {
           response.sendRedirect("login.html");
       }
    }

}
