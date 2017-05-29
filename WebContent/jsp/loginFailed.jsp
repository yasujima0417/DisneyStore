<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- ログインエラー画面 --%>

<!DOCTYPE html>
<html>
    <head>
        <title>【非公式】DisneyStore</title>
        <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="http://store.disney.co.jp/favicons/favicon.ico"/>
        <link href="css/shopping.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="login">
    	<div align="center"style="margin-top:5%;">
        <h1>ログインエラー</h1>
        <p>入力されたユーザは存在しません...</p>
        <form>
            <a class="common_button" href="./LoginServlet?submit=logout">戻る</a>
        </form>
    	</div>
    	<div>
    		<img src="https://farm6.static.flickr.com/5712/30428202375_56f450a1f4_b.jpg" style=" transform: scale(-1, 1);"/>
    		<img src="https://farm6.static.flickr.com/5712/30428202375_56f450a1f4_b.jpg" align="right"style="float:right;"/>
    	</div>
    </body>
</html>