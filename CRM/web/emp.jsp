<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
    <head>
        <title>employepage</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <style>
             *{
               padding: 0;
               margin: 0;
                box-sizing: border-box;
             }
             body{
/*                 background-image: url();*/
                 background-size: cover;
                 background-position: center;
                
                 font-family: sans-serif;
             }
             .manubar
             {
                 background: aqua;
                 text-align: center;
                 font-weight: bold;
                 font-size: 20px;
                
                 
             }
             .manubar ul
             {
                 display: inline-flex;
                 list-style: none;
                 color: white;
             }
             .manubar ul li{
                 width: 120px;
                 margin:15px;
                 padding: 15px;
                 color: white;
             }
             .manubar ul li a
             {
                 text-decoration: none;
                 color: black;
             }
            .manubar ul li:hover
             {
                 background: #ccffcc;
                 border-radius: 3px;
             }
             .submenu
             {
                 display: none;
             }
              .manubar ul li:hover .submenu
              {
                  display: block;
                  position: absolute;
                  background-color: antiquewhite;
                  margin-top: 15px;
                  margin-left: 15px;
              }
              .manubar ul li:hover .submenu ul{
                  display: block;
                  margin: 10px;
              }
              .manubar ul li:hover .submenu ul li{
                  width: 150px;
                  padding: 10px;
                  border-bottom: 1px dotted black;
                  background: transparent;
                  border-radius: 0;
                  text-align: left;
              }
              .manubar ul li:hover .submenu ul li:last-child{
                  border-bottom: none;
              }
              .manubar ul li:hover .submenu ul li a:hover
              {
                  color: red;
              }
             .logout{
                 text-decoration: none;
                  text-align: right;
                display: flex;
                display: block;
                justify-content: flex-end;
                align-self:center;
                background-color: yellow;
                font-size: 20px;
                font-weight: bold;
                
/*                width: 20px;*/
            }
            .m
            {
                background-color: black;
                color: white;
            }
    </style>
    </head>
    
         <% String email=(String)session.getAttribute("email");
            
            if(email == null )
        {
            response.sendRedirect("login.html");
        }
            %>
        
        <div class="m">
             <h1>Employe...</h1>
        <div class="manubar">
           
        <ul>
            <li ><a href="endemp.jsp">Product Category</a>
            
                <div class="submenu">
                    <ul>
                        <li><a href="endemp.jsp">Add Category</a></li>
                         <li><a href="endemp.jsp">Category List</a></li>
                        
                    </ul>
                </div>
            
            </li>
            <li><a href="endemp.jsp">Product Details </a>
             <div class="submenu">
                    <ul>
                        <li><a href="endemp.jsp"> Product Add</a></li>
                         <li><a href="endemp.jsp">Product List</a></li>
                        
                    </ul>
                </div>
                </li>
            
            <li><a href="endemp.jsp">Complaint List</a></li>
            <li><a href="endemp.jsp">Product Enquiry List</a></li>
            
            
<!--            <li><a href="#">;Logout</a></li>-->
        </ul>
            </div>
        </div>
       
        <div class="logout"><a href="login.html">Logout</a></div>
    

