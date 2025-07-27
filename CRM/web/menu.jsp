<%-- 
    Document   : menu.jsp
    Created on : Nov 28, 2023, 7:58:27 PM
    Author     : Rahul Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <style>
            *{
                margin:0;
                padding:0;
                box-sizing: border-box;
            }
            body{
                background-image: url("");
/*                background-color: rgb(179, 218, 255);*/
                background-size: cover;
                background-position: center;
                
                font-family: sans-serif;
            }
            .menu-bar{
                background-color: rgb(0, 119, 230);
                text-align: center;
                font-weight: bold;
                font-size:20px;
            }
            .menu-bar ul{
                display:inline-flex;
                list-style:none;
                color:white;
            }
            .menu-bar ul li{
                width:120px;
                margin:15px;
                padding:15px;
            }
            .menu-bar ul li a{
                text-decoration: none;
                color:white;
            }
            .menu-bar ul li:hover{
                background-color: rgb(153, 206, 255);
                border-radius: 3px;
            }
            .sub-menu{
                display:none;
            }
            .menu-bar ul li:hover .sub-menu{
                display: block;
                position: absolute;
                background-color: rgb(0, 119, 230);
                margin-top:15px;
                margin-left: -15px;
            }
            .menu-bar ul li:hover .sub-menu ul{
                display: block;
                margin:10px;
            }
            .menu-bar ul li:hover .sub-menu ul li{
                width: 150px;
                padding:10px;
                border-bottom:1px dotted white;
                background:transparent;
                border-radius: 0;
                text-align: left;
            }
            .menu-bar ul li:hover .sub-menu ul li:last-child{
                border-bottom: none;
            }
            .menu-bar ul li:hover .sub-menu ul li a:hover{
                color:rgb(204, 230, 255);
            }
            .logout{
                display: flex;
                justify-content: flex-end;
                align-self:center;
            }
        </style>
    </head>
    <body>
      
        <nav class="menu-bar">
            <ul>
                <li ><a href="#">User</a>
                <div class="sub-menu">
                    <ul>
                        <li><a href="#">Add User</a></li>
                        <li><a href="#">Add Employee</a></li>
                    </ul>
                </div>
                </li>
                <li><a href="#">Product Category</a>
                <div class="sub-menu">
                    <ul>
                        <li><a href="#">Add New Category</a></li>
                        <li><a href="#">Category List</a></li>
                    </ul>
                </div></li>
                <li><a href="#">Product Details</a>
                <div class="sub-menu">
                    <ul>
                        <li><a href="#">Product Add</a></li>
                        <li><a href="#">Product List</a></li>
                    </ul>
                </div></li>
                <li><a href="#">Complaint</a>
                <div class="sub-menu">
                    <ul>
                        <li><a href="#">Complaint List</a></li>
                        
                    </ul>
                </div></li>
                 <li><a href="#">Product Inquiry</a>
                 <div class="sub-menu">
                    <ul>
                       
                        <li><a href="#">Product Inquiry list</a></li>
                    </ul>
                </div></li>
            </ul>
            <div class="logout">
            <a href="logout.jsp" style="text-decoration: none;color:white;">LogOut</a>
            </div>
        </nav>
    </body>
    
</html>
