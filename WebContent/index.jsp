<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="login_user_bean" scope="session" class="login.LoginUserBean" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>【非公式】DisneyStore</title>
        <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="http://store.disney.co.jp/favicons/favicon.ico"/>
        <link href="css/shopping.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    	<link href="http://fonts.googleapis.com/css?family=Oxygen:400,300,700" rel="stylesheet" type="text/css"/>
		<link href="http://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body class="login">

	<input type="checkbox" class="check push" id="checked-push">


	<label class="switch push" for="checked-push"></label>
	<div class="gatefold">
        <main class="login_pane">
        	<span class="midasi">
            <span class="fa fa-star-o fa-3x fa-spin" aria-hidden="true" ></span>
            <span class="disney"><font size=1000px;>DisneyStore</font></span>
            <span class="fa fa-star-o fa-3x fa-spin" aria-hidden="true"></span>
            </span>
			<div class="signin cf">
  			<div class="avatar"></div>
            <form action="./LoginServlet" method="post">
                <div class="inputrow">
                    <input type="text" id="name" placeholder="Username"  name="id" value="<%=login_user_bean.getId()%>"/>
                    <label class="ion-person" for="name"></label>
                </div>
                <div class="inputrow">
                	<input type="password" id="pass" placeholder="Password" name="pass"/>
                    <label class="ion-locked" for="pass"></label>
                </div>

					<a href=jsp/user_registration.jsp>新規登録</a>

                    <input class="common_button" type="submit" name="submit123"  value="ログイン"/>

                    <%-- ログイン済みの場合はログアウトボタンを表示 --%>
                    <% if ("login".equals(session.getAttribute("login_state"))) { %>
                    <input class="common_button" type="submit" name="submit123" value="ログアウト"/>
                    <% }%>

            </form>
            </div>
        </main>
</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
    </body>
</html>