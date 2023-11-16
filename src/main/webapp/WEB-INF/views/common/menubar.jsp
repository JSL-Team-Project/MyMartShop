<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel='stylesheet'  href='/css/menubar.css'>
<title>${pageTitle }</title>
</head>
<body>
    <header class="header">
        <a href="#" class="logo">
            <h2>logo</h2>
        </a>
        
        <!--링크-->
        <nav class="navbar">
            <a href="#">Home</a>
            <a href="#">Board</a>
            <a href="#">Shop</a>
        </nav>
        <!--아이콘-->
        <div class="icon">
            
        <ul>
            <li> <i class='bx bx-buildings'></i></li>
            <li><i class='bx bx-user'></i>
            <ul class="dropdown">
                <li><a href="">Login</a></li>
                <li><a href="">Register</a></li>
            </ul>
        </li>
            
            <li><i class='bx bx-search' id="search"></i></li>
        </ul>
        </div>
        <form name="#" method="post" class="search-form">
        <div>
            <input type="text" id="search-box" placeholder="search here...">
            <a href="#"><label for="search-box" class="bx bx-search"></label></a>
        </div>
        </form>
    </header>
    
</body>
<script src='/js/script.js'></script>
</html>