
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
home page
<sec:ifLoggedIn>
    <g:link controller="logout">Logout</g:link>
</sec:ifLoggedIn>
<sec:ifNotLoggedIn>
    <g:link controller='login' action='auth'>Login</g:link>
</sec:ifNotLoggedIn>
</html>

