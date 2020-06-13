<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div align="center">
    <form action="Login" method="post">
        <h2>Authorization</h2><br>
        <h3>Wrong login or password</h3><br>
        <span>Login</span><br><br>
        <input type="text" maxlength="20" name="login" placeholder="login" required><br><br>
        <span>Password</span><br><br>
        <input type="password" maxlength="20" name="password" placeholder="password" required><br><br>
        <input type="submit" name="LOGIN" value="Submit">
    </form>
    <form action="sign_in.jsp">
        <input type="submit" name="sign_in" value="Sign in">
    </form>
</div>
</body>
</html>
