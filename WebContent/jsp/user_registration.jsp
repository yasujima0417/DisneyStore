<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="css/shopping.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css"
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="http://fonts.googleapis.com/css?family=Oxygen:400,300,700"
			rel="stylesheet" type="text/css" />
		<link
			href="http://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css"
			rel="stylesheet" type="text/css" />
</head>
<body>

	<form action=../LoginServlet method="post">

		<table>
			<tr>
				<td>ログインID</td>
				<td><input required pattern="^[0-9A-Za-z]+$" type="text"
					name="userId" /></td>
			</tr>
			<tr>
				<td>パスワード</td>
				<td><input required type="password" name="userPassword" /></td>
			</tr>
			<tr>
				<td>氏名</td>
				<td><input required type="text" name="userName" /></td>
			</tr>
			<tr>
				<td>年齢</td>
				<td><input required type="number" name="userOld" /></td>
			</tr>
			<tr>
				<td><input required type="submit" value="登録" name="submit" /></td>
			</tr>
		</table>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
</body>
</html>