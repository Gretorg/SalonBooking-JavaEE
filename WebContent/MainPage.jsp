<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
* {
	margin: 0, padding: 0; box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	display: flex; justify-content: center; align-items: center;
	min-height: 100vh; overflow: hidden;	
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
	content: ""; position: absolute; top: 50%;left:40%;
	transform: translate(-50%,-50%);display: flex;
	justify-content: center;align-items: center;
	font-size: 5em; color: rgba(0,0,0,0.1);
	border-radius: 50%; z-index: -1; opacity: 0;
	font-weight: 900;
	text-transform: uppercase;letter-spacing: 500px;
	transition: letter-spacing 0.5s, left 0.5s;
}

ul li a:hover:before {
	content: attr(data-text); opacity: 1; left: 50%;
	letter-spacing: 10px; width: 1800px; height: 1800px;
}

ul li:nth-child(6n+1) a:before{background: #81ecec;}
ul li:nth-child(6n+2) a:before{background: #ff7675;}
ul li:nth-child(6n+3) a:before{background: #55efc4;}
ul li:nth-child(6n+4) a:before{background: #a29bfe;}
ul li:nth-child(6n+5) a:before{background: #fd79a8;}
ul li:nth-child(6n+6) a:before{background: #ffeaa7;}
</style>
</head>
<body>
<ul>
	<li><a href="#" data-text="Home">Home</a></li>
	<li><a href="schedule" data-text="Schedule">Schedule</a></li>
	<li><a href="reserve" data-text="Reserve">Reserve</a></li>
	<li><a href="login.jsp" data-text="Login">Login</a></li>
	<li><a href="sign_in.jsp" data-text="Sign in">Sign in</a></li>
	<li><a href="#" data-text="About us">About us</a></li>
</ul>
</body>
</html>