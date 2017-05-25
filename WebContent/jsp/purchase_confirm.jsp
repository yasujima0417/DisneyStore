<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="item_bean" scope="request" class="shopping.ItemBean"/>

<%-- 購入確認画面 --%>
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

<main>
    <h1>購入確認</h1>
    <h2>次の商品を購入しますか？</h2>

    <form action="./ResultServlet" method="post">
        <table class="shopping_table">
            <tbody>
                <tr>
                    <th>商品ID</th>
                    <th>商品名</th>
                    <th>商品画像</th>
                    <th>価格</th>
                    <th>在庫数</th>
                    <th>購入数</th>
                </tr>
                <tr>
                    <%-- リクエストスコープから表示する値を取得 --%>
                    <td><jsp:getProperty name="item_bean" property="itemId" /></td>
                    <td><jsp:getProperty name="item_bean" property="itemName" /></td>
                    <td><img src="img/<jsp:getProperty name="item_bean" property="itemImg"/>" width=100%/></td>
                    <td class="int"><jsp:getProperty name="item_bean" property="price" /></td>
                    <td class="int"><jsp:getProperty name="item_bean" property="quantity" /></td>
                    <td class="int"><%=request.getAttribute("purchased_num")%></td>
                    <td class="button">
                        <input class="common_button" type="submit" value="購入する">
                        <% //TODO:2-5 hiddenでパラメータをセットしておく %>
                        <%-- 購入処理を行うため、hidden（画面には表示されない情報）に商品IDと購入数を設定しておく --%>
                        <input type="hidden" name="item_id" value="<jsp:getProperty property="itemId" name="item_bean"/>">
                        <input type="hidden" name="item_quantity" value="<%= request.getAttribute("purchased_num")%>">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <form action="./ShoppingServlet" method="post">
        <input class="common_button" type="submit" value="一覧に戻る">
    </form>
</main>

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