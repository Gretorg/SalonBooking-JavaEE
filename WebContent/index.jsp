<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Salon</title>
      <style>
      .banner-title{
    text-transform: uppercase;
    font-size: 6em;
    background-image: url("https://image.shutterstock.com/z/stock-photo-beautiful-abstract-grunge-decorative-navy-blue-dark-stucco-wall-background-art-rough-stylized-539880832.jpg");
    background-size: 900px auto;
    background-repeat: no-repeat;
    background-position: center;
    background-clip: content-box;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.container {
    width: 100%;
}

.container ul {
    margin-left: 400px;
    list-style: none;
}

.container li {
    display: inline-block;
}
h1{
    font-size: 350%;
}
h2{
    font-size: 220%;
}
table {
    font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    font-size: 14px;
    background: white;
    max-width: 70%;
    width: 70%;
    border-collapse: collapse;
    text-align: left;
}
th {
    font-weight: normal;
    color: #039;
    border-bottom: 2px solid #6678b1;
    padding: 10px 8px;
}
td {
    color: #669;
    padding: 9px 8px;
    transition: .3s linear;
}
tr:hover td {color: #6699ff;}

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
  <div style="position: absolute; top: auto; right: auto; display: inline-block;">
    <ul>
	<li><a href="home" data-text="Home">Home</a></li>
	</ul>
  </div>
  <div align="center">
    <h1>Schedule</h1>
    <form action="refresh" method="post">
      <p>
        <label for="today">Choose the day</label><br><br>
        <input type="date" id="today" name="date" required max="2020-06-31">
      </p>
      <span>Choose the gender</span>
      <section class="light">
        <label>
          <img src="file:///E:/Workspace%20EE(Eclipse)/CourseWorkSalimovskyi/images/man.png" width="100" height="100">
          <input type="radio"  name="gender_id" checked value="1">
          <span class="design"></span>
          <span class="text">Man</span>&nbsp;&nbsp;&nbsp;
        </label>
        <label>
          <img src="file:///E:/Workspace%20EE(Eclipse)/CourseWorkSalimovskyi/images/woman.png" width="100" height="100">
          <input type="radio"  name="gender_id" value="2">
          <span class="design"></span>
          <span class="text">Woman</span>
        </label>
       </section>
    <table>
      <tr>
      <th>Day</th>
      <th>Time</th>
      <th>Master name</th>
      <th>Master surname</th>
      <th>Reservation</th>
      </tr>
      <c:forEach var="Schedule" items="${schedule}">
      <tr>
      <td><c:out value="${Schedule.getSchedule_day()}" /></td>
      <td><c:out value="${Schedule.getSchedule_time()}" /></td>
      <td><c:out value="${Schedule.getMaster_name()}" /></td>
      <td><c:out value="${Schedule.getMaster_surname()}" /></td>
      <td><c:out value="${Schedule.getReserve_status()}" /></td>
      </tr>
      </c:forEach> 
     </table>
      <input type="submit" name="refresh" value="Refresh">
    </form>
    <form action="reserve">
      <input type="submit" name="reserve" value="Reserve">
    </form>
  </div>
  </body>
</html>
<script>
  let today = new Date().toISOString().substr(0, 10);
  document.querySelector("#today").value = today;
  document.querySelector("#today").min = today;
</script>