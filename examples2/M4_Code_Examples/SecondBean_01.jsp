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
            <jsp:useBean id='second' class='coffeeBeans.MySecondBean' />
            
            <!-- Now we access the bean //-->
            <!-- First we set the bean's value //-->
            <h3>Set bean's new value using String(int value)</h3>
            <jsp:setProperty name='second' property='intValue' value='44' />
            
            <!-- Now we access the bean's value//-->
            <h3>Get bean's new value, String returned</h3>
            intValue = <jsp:getProperty name='second' property='intValue' />
            
            <br />
            
            <h3>Set and Get bean's new value</h3>
            <jsp:setProperty name='second' property='doubleValue' value='22.33' />
            doubleValue = <jsp:getProperty name='second' property='doubleValue' />
        
</body>
</html>