<%@ page import="java.util.ArrayList"%>
<%@ page import="shopping.HistoryBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="login_user_bean" scope="session" class="login.LoginUserBean"/>

<%-- 購入履歴画面 --%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>【非公式】DisneyStore</title>
        <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="http://store.disney.co.jp/favicons/favicon.ico"/>
        <link href="css/shopping.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>

    <body>

        <jsp:include page="header.jsp"/>

		<div style="float:left;margin-left:10%;">
        <h1><jsp:getProperty name="login_user_bean" property="name" />さんの購入履歴</h1>
        <%-- ShoppingServletで付加したattribute: historyをリクエストスコープからBeanクラスのListを取得 --%>
        <% ArrayList<HistoryBean> historyList = (ArrayList<HistoryBean>) request.getAttribute("history"); %>

        <table class="table_list" style="font-size:20px;">
            <tbody>
                <tr>
                    <th>商品ID</th>
                    <th>商品名</th>
                    <th>購入数</th>
                </tr>

                <%-- リクエストスコープから表示する値を取得 --%>
                <% for (HistoryBean bean : historyList) {%>
                <tr>
                    <%-- 商品ID --%>
                    <td><%= bean.getItemId()%></td>
                    <%-- 商品名 --%>
                    <td><%= bean.getItemName()%></td>
                    <%-- 数量（在庫） --%>
                    <td class="int"><%= bean.getQuantity()%></td>
                </tr>
                <% }%>
            </tbody>
        </table>

        <form action="./ShoppingServlet" method="post">
            <input class="common_button" type="submit" value="一覧に戻る">
        </form>
        </div>
        <div style="float:right;margin-right:25%;">
        <img src="https://s-media-cache-ak0.pinimg.com/originals/33/3e/93/333e93cba0617ede2f8b2d54702e36ff.gif"width=120%/>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
    <script>
$(document).ready(function(){
	$("#home").click(function(){
		console.log("click");
		$("#form4").submit();
	});
	$("#fassion").click(function(){
		console.log("click");
		$("#form1").submit();
	});
	$("#zakka").click(function(){
		console.log("click");
		$("#form2").submit();
	});
	$("#nuigurumi").click(function(){
		console.log("click");
		$("#form3").submit();
	});

});
</script>
    </body>
</html>