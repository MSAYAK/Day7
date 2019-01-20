 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>


 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <title>Hello, world!</title>

<style>

body{ font-family:veranda; 
 font-size:16px;
 margin-bottom-bottom:15px;
  
 
}
 h1 {
    background-color:blue;
    text-align: center;
}


 input[type=text],input[type=password] { 
 outline:none; 
 transition: .2s all linear; 
 display:flex; 
 border:1px solid silver;
 border-radius:4px;
 padding:8px;

 -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box ; 
	width:40%;
	} 
	
	 div#glob_content{
 width: 800px;
    height: 500px;
    background-color:white;
	border-radius:20px;

    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;

    margin: auto;}
	div#form_content{ 
	padding:20px;}
	div#title{ background-color:#00008B;
	color:white; 
	font-weight:bold;
	text-align:center; 
	text-transform: uppercase;
	box-shadow:1px 0px
	15px #00008B;
	padding:20px; 
	font-size:20px;
	}
	input[type=submit]{ 
	padding:5px 10px 5px 10px;
	background-color:#00008B; 
	border-radius:4px; 
	border:1px solid  #00008B; color:white;
	font-weight:bold; 
	font-size:15px;
	 width: 40%px;
    top: 390px;
    left: 250px;
	}
	textarea{ height:150px;
	}
	input:focus,textarea:focus{
	border:2px solid #00008B;
	}
	</style>

<script>
 $('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
</script>

  </head>
  
<body background="resources/images/loginbg.jpg">
<div id="glob_content">
<div id="title">LOGIN</div>
<div id="form_content">
<center>
  <c:url var="loginAction" value="check" ></c:url> 
    <div class="login-page">
 <div class="form"> 
 
<form:form method="post" action="${loginAction}">  
<br><br><br>
 <input type="text" placeholder="aadharno" name="aadharno" required="required"/>
      <br>
      <input type="password" placeholder="password" name="password"/>
      <br>
      <input type="submit" value="<spring:message text="Submit"/>" />
      <p class="message">Not registered? <a href="">Create an account</a></p>
<!--         <p class="message">Forgot password? <a href="register">Click here</a></p> -->
  </form:form>
  </center>
 
  </div>
</div>
  </body>
</html>