<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change login</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div align="center">
    <form action="Authorization" method="post">
        <h2>Sign in</h2>
        <h3>This login is currently used </h3>
        <h3>Please choose another one</h3>
        <span>Login</span><br><br>
        <input type="text" maxlength="20" name="login" placeholder="login" required><br><br>
        <span>Password</span><br><br>
        <input type="password" maxlength="20" name="password" placeholder="password" required><br><br>
        <input type="submit" name="LOGIN" value="Submit">
    </form>
</div>
</body>
</html>
