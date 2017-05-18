<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="item_bean" scope="request" class="shopping.ItemBean"/>

<%-- 購入結果画面 --%>
<!DOCTYPE html>
<html>
<head>
  <title>DisneyStore 購入結果</title>
  <link href="css/shopping.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <jsp:include page="header.jsp"/>
  <h1>購入結果</h1>
  <h3>購入しました。</h3>
  <p><img src="img/thankyou.png" width=30%/></p>
  <form action="./ShoppingServlet" method="post">
      <input class="common_button" type="submit" value="一覧に戻る">
  </form>
</body>
</html>