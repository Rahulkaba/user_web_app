<%@page import="org.jsp.mvc.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewPage</title>
  <style type="text/css">
  *{ 
    padding-top :10px;
    margin: 0;
    box-sizing: border-box;
    border:threedshadowS;
    text-align: center;
    font-style: italic;
    font-weight: bold;
    
  }
  #box{
  max-width: 600px;
  margin: 0 auto;
  background-color: #fff;
  padding: 3rem;
  border-radius: 0.5rem;
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 7px;
  text-align: center;  
  }
  
  </style>
</head>
<body>
     <%User user=(User)session.getAttribute("user"); %>
       <div id="box">
         <c:if test="${user!=null}">
            <h2>ID:${user.getId()}</h2>
            <h2>Name:${user.getName()}</h2>
            <h2>Age:${user.getAge()}</h2>
            <h2>PhoneNumber:${user.getPhone()}</h2>
            <h2>Email:${user.getEmail()}</h2>
            <h2>Password:${user.getPassword()}</h2>
         </c:if>
       
       </div>
</body>
</html>