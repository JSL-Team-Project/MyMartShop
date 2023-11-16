<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel='stylesheet'  href='sample.css'>
    <script src='main.js'></script>
</head>
<body>
    <header>
        <a href="/" class="logo">
            LOGO
        </a>
        <!--메뉴아이콘-->
        <i class='bx bx-menu' id="menu-icon"></i>
        <!--링크-->
        <ul class="navbar">
            <li><a href="/">홈</a></li>
            <li><a href="#">숍</a></li>
            <li><a href="#">게시판</a></li>
            
        </ul>
        <!--아이콘-->
        <div class="hearder-icon">
            <a href="/Usr/Member/memberLogin"><i class='bx bx-user'></i></a>
            <i class='bx bx-search' id="search"></i>
        </div>
        <c:if test="${member!=null}">
        	<a href="/Usr/Member/memberLogout">로그아웃</a>
        </c:if>
        <a href="/Adm/Member/memberList">회원목록</a>
    </header>
    <script src='main.js'></script>
</body>
</html>