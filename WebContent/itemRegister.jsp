<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理者画面 商品登録</title>
</head>
<body>
	<h1 align="center">管理者画面</h1>
	<h2>商品登録</h2>
	<form action=AdministratorServlet method="post" enctype=multipart/form-data>
		<input type="file" name="file" />
		<input type="submit" id="selectFileSample5" name="button" value="登録"/>
		<input type="submit" id="selectFileSample5" name="button" value="在庫更新"/>
		<input type="submit" id="selectFileSample5" name="button" value="すべて更新"/>
	</form>
	<br />
	<br />

	<a href="./">ログイン画面に戻る</a>
</body>
</html>