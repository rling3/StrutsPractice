<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login page | Hello World Struts application in Eclipse</title>
    </head>
    <body>
    <h1>Login</h1>
    <html:form action="login">
         <bean:message key="label.username" />
         <html:text property="userName"></html:text>
         <html:errors property="userName" />
         <br/>
         <bean:message key="label.password"/>
        <html:password property="password"></html:password>
         <html:errors property="password"/>
        <html:submit/>
        <html:reset/>
    </html:form>
    </body>
</html>