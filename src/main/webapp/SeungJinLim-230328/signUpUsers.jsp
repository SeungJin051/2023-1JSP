<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up Result</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
      }
      
      .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
      }
      
      h1 {
        text-align: center;
        margin-top: 120;
      }
      
      p {
        margin: 0;
        line-height: 1.5;
      }
      
      ul {
        margin: 0;
        padding: 0;
     	margin-left: 50px;
      }
      
      li {
        margin-bottom: 10px;
      }
      
      .no-interests {
        font-style: italic;
        color: #999;
      }
    </style>
  </head>
  <body>
 
  <% request.setCharacterEncoding("utf-8"); %>
  	<h1>회원가입</h1>
    <% String username = request.getParameter("username"); %>
    <% String email = request.getParameter("email"); %>
    <% String password = request.getParameter("password"); %>
    <% String[] interests = request.getParameterValues("interests[]"); %>
	<% String[] like = request.getParameterValues("likes"); %>    

    <div class="container">
      <h1>결과</h1>
      <p><strong>이름:</strong> <%= username %></p>
      <p><strong>이메일:</strong> <%= email %></p>
      <p><strong>비밀번호:</strong> <%= password %></p>
      
      <% if (interests != null && interests.length > 0) { %>
        <p><strong>거주지역:</strong></p>
        <ul>
          <% for (String interest : interests) { %>
            <li><%= interest %></li>
          <% } %>
        </ul>
      <% } else { %>
        <p class="no-interests">선택하지않음.</p>
      <% } %>
      
      <% if (like != null) { %>
        <p><strong>취미:</strong></p>
        <ul>
          <%  for (String interest : like) { %>
            <li><%= interest %></li>
          <% } %>
        </ul>
      <% } else { %>
        <p class="no-interests">선택하지않음.</p>
      <% } %>
    </div>
  </body>
</html>