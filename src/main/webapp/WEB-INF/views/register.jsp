<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
  <style type="text/css">
    *{
        color: black;
        padding-top: 0.5rem;
        padding-left:1rem;
        box-sizing: border-box;
        text-align:center;
        background-color: buttonface;
        font-family: cursive;
    }
    div{
         box-shadow:  0px 7px 29px 0px;
         background-color: buttonface;
         width:70rem;
         padding:1rem;  
       }
       form{
         text-align: center;
         font-weight: bold;
       }
  </style>
</head>
<body>
      <div>
       <form:form modelAttribute="user" action="reg" method="post">
        <form:label path="name">Name :</form:label>
        <form:input path="name"/><br><br>
        <form:label path="age">Age :</form:label>
        <form:input path="age"/><br><br>
        <form:label path="email">Email Id :</form:label>
        <form:input path="email" type="email"/><br><br>
        <form:label path="phone">Phone Number :</form:label>
        <form:input path="phone"/><br><br>
        <form:label path="password">Password :</form:label>
        <form:input path="password" type="password"/><br><br>
        <form:label path="place">Place :</form:label>
        <form:input path="place"/><br><br><br>
        <form:button>Register</form:button>
       </form:form>
      </div>
</body>
</html>