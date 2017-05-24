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
				<link
					href="http://fonts.googleapis.com/css?family=Oxygen:400,300,700"
					rel="stylesheet" type="text/css" />
				<link
					href="http://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css"
					rel="stylesheet" type="text/css" />
</head>
<body
	style="background-image: url(https://mag-cosmo-prod-s3.s3.amazonaws.com/cosmogirl/Hong-Kong-Disneyland_Characters-in-HK-costume_Group-%282%29.jpg); background-repeat: no-repeat; background-size: 100%;">
	<!--  <div style="background-color: rgba(255, 255, 255, 0.8); background-size: 100%; margin-left: 320px; margin-right: 320px; padding-top: 1px; margin-top: 30px;">-->
		<div class="container-fluid" >
			<div class="row">
				<div class="col-md-offset-3 col-md-6 col-sm-offset-1 col-sm-10" style="background:rgba(255,255,255,0.8);margin-top:2%;">
					<form role="form" action="../LoginServlet" method="post"
						class="form-horizontal" width=150px>
						<div class="form-group">
							<label for="id" class="control-label col-md-3">ログインID</label>
							<div class="col-md-offset-1 col-md-6">
								<input required pattern="^[0-9A-Za-z]+$" name="userId"
									type="text" class="form-control" placeholder="ID" />
								<p class="help-block">ログインIDを入力してください。</p>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="control-label col-md-3">パスワード</label>
							<div class="col-md-offset-1 col-md-6">
								<input required type="password" name="userPassword"
									class="form-control" placeholder="Password" />
								<p class="help-block">パスワードを入力してください。</p>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="control-label col-md-3">氏名</label>
							<div class="col-md-offset-1 col-md-6">
								<input required type="text" name="userName" class="form-control"
									placeholder="UserName" />
								<p class="help-block">ユーザーの名前を入力してください。</p>
							</div>
						</div>
						<div class="form-group">
							<label for="age" class="control-label col-xs-3">年齢</label>
							<div class="col-md-offset-1 col-md-6">
								<input required type="number" min="0" name="userOld"
									class="form-control" placeholder="UserAge" />
								<p class="help-block">ユーザーの年齢を入力してください。</p>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<button type="submit" class="btn btn-default" name="submit123"
									value="登録">登録</button>
								<button type="reset" class="btn btn-default">リセット</button>
								<span style="text-align: right;"> <a href="../"
									style="color: black;">戻る</a>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	<!-- </div> -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
</body>
</html>