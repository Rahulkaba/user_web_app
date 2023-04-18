<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginPage</title>
<style type="text/css">
   *{
         padding-top: 10px;
         margin: 0;
         box-sizing: border-box;
         text-align: center;
         font-family: cursive;
         font-weight: bold;
    }
  #box{
      max-width: 600px;
      margin: 0 auto;
      background-color: #fff;
      padding: 2rem;
      border-radius: 0.5rem;
      box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 7px;
      text-align: center; 
      background-image: linear-gradient(orange,white,rgb(15, 187, 15)); 
      }
</style>
</head>
<body>
    <div id="box">
      <c:if test="${message!=null}">
        <h1>${message}</h1>
      </c:if>
      <form  action="loginuser" method="post">
       <input type="tel" name="phone" placeholder="PhoneNumber"><br><br>
       <input type="text" name="password" placeholder="Password"><br><br>
       <input type="submit" value="Login">
      </form>
      <h2>New User ?</h2>
      <h3><a href="load?choice=1">Register</a></h3>
     </div>
</body>
</html>