<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

            <!-- First we instantiate the bean //-->
            <!-- Be sure to include the package name //-->
            <h3>Create Bean</h3>
            <jsp:useBean id='first' class='coffeeBeans.MyFirstBean' />
            
            <!-- Now we access the bean //-->
            <!-- First we set the bean's value //-->
            <h3>Set bean's new value</h3>
            <jsp:setProperty name='first' property='var' value='newVar' />
            
            <!-- Now we access the bean's value//-->
            <h3>Get bean's new value</h3>
            <jsp:getProperty name='first' property='var' />
            <p />
            
            <h3>Get bean's new value using Scriptlet Expression</h3>
            <%= first.getVar() %>
            
            <br />
            <br />
            <br />
            
            <h3>Set bean's new value</h3>
            <jsp:setProperty name='first' property='var' value='secondVar' />
            <h3>Get bean's new value</h3>
            <jsp:getProperty name='first' property='var' />
            <p />
            <h3>Get bean's new value using Scriptlet Expression</h3>
            <%= first.getVar() %>

</body>
</html>