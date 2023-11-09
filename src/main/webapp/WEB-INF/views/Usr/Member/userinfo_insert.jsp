<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="회원 가입" />
<link rel='stylesheet' href='register.css'>
<%@ include file="../../common/head.jsp" %>
<body>
<!--header section starts-->
<header class="header">
    <a href="#" class="logo">logo</a>
</header>

<div class="wrapper">
    <div class="form-box register">
        <h1>Registration</h1>
        <form name="register" method="post" action="" >
        <div class="input-box">
                <span class="icon"><i class='bx bxs-user' ></i></span>
                <input name="id" type="text" placeholder="ID" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-user' ></i></span>
                <input name="name" type="text" placeholder="UserName" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                <input name="passwd" type="password" placeholder="Password" required>
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock'></i></span>
                <input name="repasswd" type="password" placeholder="Re Password" required>
            </div> 
            <div class="input-box">
                <span class="icon"><i class='bx bxs-envelope' ></i></span>
                <input name="tel" type="text" placeholder="Phone Number" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building' ></i></span>
                <input name="age" type="text" placeholder="Age" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building-house' ></i></span>
                <input name="job" type="text" placeholder="job" required>   
            </div>
            <div class="remember-forgot">
                <label><input type="checkbox">Agree to register</label>
            </div>
                <button type="submit" class="btn">Sign up</button>
            <div class="register-link">
            <p>Already have an account?
                <a href="userlogin.html">Login</a>
            </p>

        </div>
    </form>
</div>
</div>
<!--header section ends-->
<!--custom js file lick-->
<script src='script.js'></script>
<%@ include file="../../common/foot.jsp" %>