<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css@1.12/mvp.css"> 
<title>결과</title>
</head>
<style>
	body {
		background-color: #f5f5f5;
		font-family: Arial, sans-serif;
	}
	
	.box {
		background-color: #fff;
		box-shadow: 0px 2px 6px rgba(0,0,0,0.3);
		padding: 30px;
		margin: auto;
		margin-top: 50px;
		max-width: 500px;
		text-align: center;
	}
	
	h1 {
		font-size: 30px;
		font-weight: bold;
		margin-bottom: 20px;
		color: #333;
	}
	
	h2 {
		font-size: 24px;
		margin-bottom: 10px;
		color: #333;
	}
	
	.result {
		font-size: 18px;
		margin-bottom: 10px;
		color: #333;
	}
	
	.total {
		font-size: 20px;
		font-weight: bold;
		margin-top: 30px;
		color: #333;
	}
	
	.average {
		font-size: 20px;
		font-weight: bold;
		margin-top: 10px;
		color: #333;
	}
</style>

<body>
	<%
	  int korS =  Integer.parseInt(request.getParameter("kor"));
	  int engS =  Integer.parseInt(request.getParameter("eng"));
	  int mathS =  Integer.parseInt(request.getParameter("math"));
	
	  int sum = korS + engS + mathS;
	  float f_avg = (float)sum / 3;;
	  String.format("%f", f_avg);
	%>
	<div class="box">
		<h1>점수 결과</h1>
		<div class="result">국어: <%=request.getParameter("kor" )%></div>
		<div class="result">영어: <%=request.getParameter("eng" )%></div>
		<div class="result">수학: <%=request.getParameter("math")%></div>
		<div class="total">총점 = <%=sum%></div>
		<div class="average">평균 = <%=String.format("%.2f", f_avg)%></div>
	</div>
</body>


</html>