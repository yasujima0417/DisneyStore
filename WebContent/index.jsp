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
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    </head>

    <body class="login">
    <script type="text/javascript" src="JQuery-Snowfall-master/dist/snowfall.jquery.min.js"></script>
<script type="text/javascript">
  jQuery(document).snowfall({
    flakeCount : 70,			// 要素の数
    flakeColor : '#FFF',		// 要素の色
    flakeIndex : 999999,		// 要素のz-index
    minSize : 5,				// 要素の最小サイズ
    maxSize : 20,				// 要素の最大サイズ
    minSpeed : 2,				// 要素の最小落下スピード
    maxSpeed : 5,				// 要素の最大落下スピード
    round : true,				// 要素に丸みを持たせる？
    shadow : false				// 要素に影をつける？
    //collection : 'div'		// 要素を指定の要素に積もらせる設定(画像を設定してもflakeColorで指定した要素の色が積もります)
    //image : 'data:image/png;base64,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'		// 要素を指定の画像に変更
  });
</script>
	<%session.setAttribute("error", "off"); %>
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

					<a href=user_registration.jsp>新規登録</a>

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