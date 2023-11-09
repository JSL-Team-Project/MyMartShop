<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="로그인" />
<link rel='stylesheet' href='login.css'>
<%@ include file="../../common/head.jsp" %>
<body>
<!--header section starts-->
<header class="header">
    <a href="#" class="logo">logo</a>
</header>

<div class="wrapper">
    <div class="form-box login">
        <h1>Login</h1>
        <form name="login" method="post" action="" >
        
            <div class="input-box">
                <span class="icon"><i class='bx bxs-user' ></i></span>
                <input type="text" placeholder="Your Id" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                <input type="password" placeholder="Your Password" required>
                
            </div> 
            <div class="remember-forgot">
                <label><input type="checkbox">Remember me</label>
                <a href="#">Forgot password?</a>
            </div>
                <button type="submit" class="btn">Login</button>
            <div class="register-link">
            <p>Don't have an account?
                <a href="userinfo.insert.html">Register</a>
            </p>

        </div>
    </form>
</div>
</div>
<!--header section ends-->
<!--custom js file lick-->
<script src='script.js'></script>
<%@ include file="../../common/foot.jsp" %>