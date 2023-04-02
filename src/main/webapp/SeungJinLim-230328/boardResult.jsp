<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.box {
  width: 500px;
  height: 300px;
  margin: auto;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  border: 1px solid #ccc;
  text-align: center;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: #fff;
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
  border-radius: 5px;
}

.info {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
  font-size: 1.2rem;
  font-weight: bold;
}

.title, .host {
  margin-right: 10px;
}

.text-info {
  margin-top: 20px;
  font-size: 1.1rem;
  line-height: 1.5;
  color: #333;
}

.text-info a {
  color: #0077c0;
  text-decoration: none;
  transition: all 0.3s ease-in-out;
}

.text-info a:hover {
  color: #004d80;
}

</style>
<body>
	<div class="box">
		<%
		   String title = request.getParameter("title");
		   String hostName = request.getParameter("hostName");
		   String think = request.getParameter("think");
		%>
		<div class="info">
			<span class="title">제목: <%= title %></span>
			<span class="host"> 작성자: <%= hostName %></span>
		</div>
		<div class="text-info">
			내용: <%= think %>
		</div>
	</div>
</body>
</html>