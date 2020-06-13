<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorisation</title>
    <style>
    * {
	margin: 0, padding: 0; box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}
ul {
	position: relative;
}

ul li { list-style: none;text-align: center; }

ul li a {
	color: #333; text-decoration: none; font-size: 3em;
	padding: 5px 20px; display: inline-flex;
	font-weight: 700; transition: 0.5s;
}

ul:hover li a {color: #0002;}
ul li:hover a {color:#000; background: rgba(255,255,255,1);}
ul li a:before {
	content: ""; position: absolute; top: 50%;left:50%;
	transform: translate(-50%,-50%);display: flex;
	justify-content: center;align-items: center;
	font-size: 3em; color: rgba(0,0,0,0.1);
	border-radius: 50%; z-index: -1; opacity: 0;
	font-weight: 200;
	text-transform: uppercase;letter-spacing: 10px;
	transition: letter-spacing 0.5s, left 0.5s;
}

ul li a:hover:before {
	content: attr(data-text); opacity: 1; left: 80%;
	letter-spacing: 10px; width: 200px; height: 200px;
}

ul li:nth-child(n+1) a:before{background: #81ecec;}
    </style>
</head>
<body>
	<div style="position: absolute; top: auto; right: auto; display: inline-block;">
    <ul>
	<li><a href="home" data-text="Home">Home</a></li>
	</ul>
  </div>
    <div align="center">
    <form action="Login" method="post">
        <h2 class="banner-title">Authorization</h2><br><br>
        <span>Login</span><br><br>
        <input type="text" maxlength="20" name="login" placeholder="login" required><br><br>
        <span>Password</span><br><br>
        <input type="password" maxlength="20" name="password" placeholder="password" required><br><br>
        <input type="submit" name="LOGIN" value="Submit">
    </form>
    </div>
</body>
</html>
