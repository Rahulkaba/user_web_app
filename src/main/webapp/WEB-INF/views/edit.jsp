<%@page import="org.jsp.mvc.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit page</title>
  <style type="text/css">
   *{
     
      box-sizing: border-box;
      background: white;
      text-align: center;
   }
    div{
        height:20rem;
        width:70rem;
        box-shadow: 0px 1px 2px 5px;
        background:  transparent;
    
    }
   form{
         padding-top:3rem;
         text-align: center;
         font-weight: bold;
     }
  </style>
</head>
<body>
    <%session.getAttribute("user");%>
    <c:if test="${user!=null}">
    <div>
    <form:form modelAttribute="u" action="edit" >
        <form:input path="id" readonly="true" value="${user.getId()}"/><br><br>
        <form:input path="name"  value="${user.getName()}"/><br><br>
        <form:input path="age"  value="${user.getAge()}"/><br><br>
        <form:input path="email"  value="${user.getEmail()}"/><br><br>
        <form:input path="phone"  value="${user.getPhone()}"/><br><br>
        <form:input path="password" value="${user.getPassword()}"/><br><br>
        <form:input path="place"  value="${user.getPlace()}"/><br><br><br>
        <form:button>Update</form:button>
    </form:form>
    </div>      
   </c:if>
</body>
</html>