<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css@1.12/mvp.css"> 
<title>게시판</title>
</head>
<style>
	h1 {
	align-items: center;
	text-align: center;
	}
	
	.form-div {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	}
	
	form {
	width: 1000px;
	}
	
	.textArea {
		width: 400px;
		height: 400px;
	}
</style>
<body>
	<h1>게시판</h1>
	<div class="form-div">
		<form action="boardResult.jsp" method="get">
			<input type="text" name="title" placeholder="제목" required>
			<input type="text" name="hostName" placeholder="작성자" required>
			<div><input class="textArea" type="text" name="think" placeholder=".." required></div>
			<input type="submit" value="작성"> 
		</form>
	</div>

</body>
</html>