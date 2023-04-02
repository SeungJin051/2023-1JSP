<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 계산기</title>
</head>
<style>
	form {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  height: 100%;
	}
	
	.box {
	  width: 400px;
	  height: 300px;
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
	
	.box div {
	  margin-bottom: 20px;
	  font-size: 1.2rem;
	  font-weight: bold;
	}
	

	.box input[type="text"] {
	  padding: 10px;
	  font-size: 1.1rem;
	  border-radius: 3px;
	  border: 1px solid #ccc;
	  width: 60%;
	}
	
	.box input[type="submit"] {
	  padding: 10px;
	  font-size: 1.2rem;
	  background-color: #0077c0;
	  color: #fff;
	  border: none;
	  border-radius: 3px;
	  cursor: pointer;
	  transition: all 0.3s ease-in-out;
	  width: 60%;
	}
	
	.box input[type="submit"]:hover {
	  background-color: #004d80;
	}
</style>
<body>
	<div class="box">
		<form action="scoreResult.jsp" method="get">
			<div>
				<div>국어 = <input type="text" name="kor" required></div>
				<div>영어 = <input type="text" name="eng" required></div>
				<div>수학 = <input type="text" name="math"required></div>
				<input type="submit" value="전송"> 
			</div>
		</form>
	</div>
</body>
</html>