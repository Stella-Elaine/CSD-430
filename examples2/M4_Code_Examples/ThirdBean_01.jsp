<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

            <h3>Create Bean</h3>
            <jsp:useBean id='third' class='coffeeBeans.MyThirdBean' />
            
            <h3>Set both values</h3>
            <jsp:setProperty name='third' property='valueOne' value='44' />
            <jsp:setProperty name='third' property='valueTwo' value='33' />
            
            <h3>Get sum</h3>
            44 + 33 = <jsp:getProperty name='third' property='sum' />
            
</body>
</html>