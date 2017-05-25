<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="item_bean" scope="request" class="shopping.ItemBean"/>

<%-- 購入結果画面 --%>
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
  <div style="margin-left:30%;width:90%;">
  <h1 style="font-size:50px;">購入完了</h1>

  <p><img src="http://images108.fotki.com/v191/photos/1/1086629/4583635/ZHM_MickeyMouseExtras_ThankYou-vi.gif" width=40%/></p>
  <form action="./ShoppingServlet" method="post">
      <input class="common_button" type="submit" value="一覧に戻る">
  </form>
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