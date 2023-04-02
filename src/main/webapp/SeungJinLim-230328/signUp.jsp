<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
   <style>
      h1 {
        text-align: center;
        margin-top: 120;
      }
      
      form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f2f2f2;
        border-radius: 5px;
      }

      input[type="text"], input[type="email"], input[type="password"], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }

      input[type="submit"]:hover {
        background-color: #45a049;
      }
    </style>
  </head>
  <body>
    <h1>회원가입</h1>
<hr>
    <form action="signUpUsers.jsp" method="post">
      <label for="username">이름:</label>
      <input type="text" id="username" name="username" required>

      <label for="email">이메일:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">비밀번호:</label>
      <input type="password" id="password" name="password" required>

      <label for="interests">거주지역:</label>
      <select id="interests" name="interests[]" multiple>
        <option value="서울" selected>서울</option>
        <option value="부산">부산</option>
        <option value="김해">김해</option>
        <option value="울산">울산</option>
      </select>
      
      <label for="interests2">취미:</label> <br>
      영화 <input type="checkbox" name="likes" value="영화">
      독서 <input type="checkbox" name="likes" value="독서">
      코딩 <input type="checkbox" name="likes" value="코딩">

      <input type="submit" value="Sign Up">
    </form>
</body>
</html>