<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<form action=../LoginServlet method="post">
		<table>
			<tr>
				<td>ログインID</td>
				<td><input required pattern="^[0-9A-Za-z]+$" type="text" name="userId"/></td>
			</tr>
			<tr>
				<td>パスワード</td>
				<td><input required type="password" name="userPassword" /></td>
			</tr>
			<tr>
				<td>氏名</td>
				<td><input required type="text" name="userName"/></td>
			</tr>
			<tr>
				<td>年齢</td>
				<td><input required type="number" name="userOld"/></td>
			</tr>
			<tr>
				<td><input required type="submit" value="登録" name="submit"/></td>
			</tr>
		</table>
	</form>
</body>
</html>