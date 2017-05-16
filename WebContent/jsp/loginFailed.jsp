<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- ログインエラー画面 --%>

<!DOCTYPE html>
<html>
    <head>
        <title>DisneyStore Error</title>
        <link href="css/shopping.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>ログインエラー</h1>
        <p>入力されたユーザは存在しません...</p>
        <form>
            <a class="common_button" href="./LoginServlet?submit=logout">戻る</a>
        </form>
    </body>
</html>