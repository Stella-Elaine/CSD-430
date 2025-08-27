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
            <br />
            <jsp:useBean id='first' class='coffeeBeans.MyFirstBean' />
            
            <!-- Now we access the bean //-->
            <!-- First we get the bean's default value //-->
            <h3>Bean's default value</h3>
            <jsp:getProperty name='first' property='var' />
            
            <!-- Second we set the bean's value //-->
            <h3>Set bean's new value</h3>
            <jsp:setProperty name='first' property='var' value='newVar' />
            
            <!-- Third access the bean's new value //-->
            <h3>Get bean's new value</h3>
            <jsp:getProperty name='first' property='var' />
            
            <br />
            
            <h3>Set &amp; Get bean's new value</h3>
            <jsp:setProperty name='first' property='var' value='secondVar' />
            <jsp:getProperty name='first' property='var' />
</body>
</html>