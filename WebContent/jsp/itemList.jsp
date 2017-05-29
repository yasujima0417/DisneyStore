<%@ page import="java.util.ArrayList"%>
<%@ page import="shopping.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%-- 商品一覧画面 --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>【非公式】DisneyStore</title>
<link rel="shortcut icon" type="image/vnd.microsoft.icon" href="http://store.disney.co.jp/favicons/favicon.ico"/>
<link href="css/shopping.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,700&subset=latin-ext"
	rel="stylesheet">
</head>
<body>
	<%-- TODO:2-1 jsp:includeでヘッダー画面を読み込む --%>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img
					src="http://www.saxplicitsolutions.com/wpw/wp-content/uploads/2016/05/90-037.jpg"
					width=100%>
				<div class="carousel-caption">
					<h3>Poo</h3>
				</div>
			</div>
			<div class="item">
				<img
					src="http://www.childrens-rooms.co.uk/childrensrooms-web/v2/images/products/viewproduct_popup/4078_add2.jpg"
					width=100%>
				<div class="carousel-caption">
					<h3>Minyy</h3>
				</div>
			</div>
			<div class="item">
				<img
					src="https://www.tapethuset.dk/image/cache/catalog/produkter/90-039_Fairies_Fairytale_Garden_Border-1200x1200.jpg"
					width=100%>
				<div class="carousel-caption">
					<h3>TinkerBell</h3>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
	<!-- Carousel -->

	<main>
	<h1>Item List</h1>
	<form action="ShoppingServlet2" method="get" align="right">
		<select name="colum">
			<option value="id">商品ID</option>
			<option value="name">商品名</option>
			<option value="price">価格</option>
			<option value="quantity">在庫数</option>
		</select>
		<select name="sort">
			<option value="up">昇順</option>
			<option value="down">降順</option>
		</select>
		<input type="submit" name="submit123" value="並び替え" />
	</form>

	<%-- リクエストスコープからBeanクラスの配列を取得 --%> <%
 	ArrayList<ItemBean> itemList = (ArrayList<ItemBean>) request.getAttribute("itemList");
 %>

	<form action="./BuyItemServlet">
		<table class="shopping_table">
			<tbody>
				<tr>
					<th>商品ID</th>
					<th>商品名</th>
					<th>商品画像</th>
					<th>価格</th>
					<th>在庫数</th>
					<th>数量</th>
				</tr>

				<%-- Beanの要素数分（商品の種類分）テーブルを作成 --%>
				<%
					for (ItemBean bean : itemList) {
				%>
				<tr>
					<%-- 商品ID --%>
					<td><%=bean.getItemId()%></td>
					<%-- 商品名 --%>
					<td><%=bean.getItemName()%></td>
					<td><img src="<%=bean.getItemImg()%>" width=100%
						class="img-responsive" /></td>
					<%-- 価格 --%>
					<td class="int"><%=bean.getPrice()%></td>
					<%-- 数量（在庫） --%>
					<td class="int"><%=bean.getQuantity()%></td>

					<%-- TODO:2-2 在庫が0の場合はリストボックスと購入ボタンを表示しない処理を入れる --%>
					<%
						if (bean.getQuantity() != 0) {
					%>
					<td><select class="list" name="<%=bean.getItemId()%>list">
							<%
								for (int i = 1; i <= bean.getQuantity(); i++) {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}
							%>
					</select></td>
					<td class="button"><input class="common_button" type="submit"
						value="購入" name="<%=bean.getItemId()%>"></td>
					<%
						} else {
					%>
					<td class="button">売り切れ！</td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>

		<a class="common_button" href="./">戻る</a>
	</form>
	</main>
	<div class="slider">
		<div class="container">
			<div class="row" id="slider-text">
				<div class="col-md-6">
					<h2>NEW COLLECTION</h2>
				</div>
			</div>
		</div>


		<div class="container-fluid">

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="carousel carousel-showmanymoveone slide"
						id="itemslider">
						<div class="carousel-inner">

							<div class="item active">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT__z2CayK182KROh6VNIaKPWSccifUeVAfyI-DPnYm3O8jNhc&usqp=CAE" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
									<input type="hidden" value="s0011" name="id">
									</form>
									<h4 class="text-center">
										スティッチ<br>ペンケース
									</h4>
									<h5 class="text-center">1,990円</h5>
								</div>
							</div>

							<div class="item">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRKIlKPjk9r-Auxr1-b1eAc58eegpo4meLHC60hA2WZgGU7OgAbJHPHvmuJktBuwbgaS5Pp3Pg&usqp=CAE" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
										<input type="hidden" value="s0012" name="id">
									</form>
									<h4 class="text-center">
										みんなでつながる<br>ディズニーパーカー
									</h4>
									<h5 class="text-center">2,052円</h5>
								</div>
							</div>

							<div class="item">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSJy6MP5hlHcgDdbru-S-6gsg8gA8xD1xO0CvdOYBRytS5lMzE&usqp=CAE" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
										<input type="hidden" value="s0013" name="id">
										</form>
										<span
										class="badge" style="width: auto; height: auto;">10%</span>
									<h4 class="text-center">
										チップ<br>ぬいぐるみ
									</h4>
									<h5 class="text-center">2,250円</h5>
									<h6 class="text-center">2,500円</h6>
								</div>
							</div>

							<div class="item">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcR7ccRB6En6A24vtW_9ji5n-62lzjGI3WEoAIJK93mXKxHX2p_bP6CfyYQfAQfQLMWC4Q4Bwocw&usqp=CAE" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
										<input type="hidden" value="s0014" name="id">
									</form>
									<h4 class="text-center">
										ミッキー<br>ペアランチセット
									</h4>
									<h5 class="text-center">3,590円</h5>
								</div>
							</div>

							<div class="item">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRAzKMgbNK-4YQ0ld1czUTR761f09AKvLU9bLY_FhUd-D-DUMo&usqp=CAE" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
										<input type="hidden" value="s0015" name="id">
									</form>
									<h4 class="text-center">
										プリンセス<br>トドラーベッド
									</h4>
									<h5 class="text-center">950,000円</h5>
								</div>
							</div>

							<div class="item">
								<div class="col-xs-12 col-sm-6 col-md-2">
									<form action="./BuyItemServlet" method="get">
									<input type="image"
										src="https://item-shopping.c.yimg.jp/i/l/boogiewoogie-store_d-yt151" value="購入" name="submit123"
										class="img-responsive center-block" width=80%>
										<input type="hidden" value="s0016" name="id">
									</form>
									<h4 class="text-center">
										ディズニー<br>サガラ刺繍ポーチ
									</h4>
									<h5 class="text-center">4,600円</h5>
								</div>
							</div>

						</div>

						<div id="slider-control">
							<a class="left carousel-control" href="#itemslider"
								data-slide="prev"><img
								src="https://s12.postimg.org/uj3ffq90d/arrow_left.png"
								alt="Left" class="img-responsive"
								style="margin: 0 auto; position: absolute; top: 0; bottom: 0; right: 0; left: 0; margin: auto;"></a>
							<a class="right carousel-control" href="#itemslider"
								data-slide="next"><img
								src="https://s12.postimg.org/djuh0gxst/arrow_right.png"
								alt="Right" class="img-responsive"
								style="margin: 0 auto; position: absolute; top: 0; right: 0; left: 0; bottom: 0; margin: auto;"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {

					$('#itemslider').carousel({
						interval : 3000
					});

					$('.carousel-showmanymoveone .item').each(
							function() {
								var itemToClone = $(this);

								for (var i = 1; i < 6; i++) {
									itemToClone = itemToClone.next();

									if (!itemToClone.length) {
										itemToClone = $(this)
												.siblings(':first');
									}

									itemToClone.children(':first-child')
											.clone().addClass(
													"cloneditem-" + (i))
											.appendTo($(this));
								}
							});
				});
	</script>
	<script>
$(document).ready(function(){
	$("#home2").click(function(){
		console.log("click");
		$("#form4").submit();
	});
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
<br/>
<br/>
<div style="overflow: hidden; position: relative;">
<p style="text-align:center;"><img src="http://www.disney.co.jp/content/dam/disney/images/studio/beautyandbeast/logo/logo_bb_01.png" width=25% style=" position: absolute;left: 10%;top: 25%;"/><iframe width="660" height="415" src="https://www.youtube.com/embed/Yxhgx-PBF88" frameborder="0" allowfullscreen style="margin-left:35%;"></iframe></p>
</div>

</body>
<footer class="bg-danger">
	<div class="footermenu">
		<a href=#>オンラインストア利用規約</a> | <a href=#>特定商取引法に基づく表示</a> | <a href=#>お問い合わせ</a>
		| <a href=#>ディズニーストアの採用情報</a>
	</div>
	<div class="ofical" style="float:left;">
		<a href=http://www.disney.co.jp><img
			src="http://www.disney.co.jp/etc/designs/disney/libs/common/image/logo-header.png"
			width=10%></a> <a
			href=http://secured.disney.co.jp/onlinehelp/membership.html>ディズニーアカウント</a>
		<a href=http://secured.disney.co.jp/onlinehelp/newsmail.html>ニュースメール</a>
	</div>
	<div style="float:right; white-space: nowrap;">
		<div class="row">
			<div class="col-md-8 col-xs-7">
				<div class="css">
					Disney.jp公式アカウント <a
						href="http://store.disney.co.jp/redirect/tp_out.html?destination=https://www.facebook.com/DisneyJapan"><button
							type="button" class="btn btn-primary btn-xs">
							<i class="fa fa-facebook"></i> facebook
						</button></a> <a
						href="http://store.disney.co.jp/redirect/tp_out.html?destination=https://twitter.com/disneyjp"><button
							type="button" class="btn btn-info btn-xs">
							<i class='fa fa-twitter'></i> Twitter
						</button></a> <a
						href="http://store.disney.co.jp/redirect/tp_out.html?destination=https://www.youtube.com/user/disneyjp"><button
							type="button" class="btn btn-danger btn-xs">
							<i class="fa fa-youtube"></i> YouTube
						</button></a>


				</div>
			</div>
		</div>
	</div>
	<br />

	<div style="clear:both;">
	<a href=http://www.disney.co.jp/news.html>ニュース一覧</a> | <a href=http://www.disney.co.jp/campaign.html>キャンペーン一覧</a> | <a href=http://secured.disney.co.jp/onlinehelp.html>オンラインヘルプ（よくあるご質問）</a> | <a href=http://secured.disney.co.jp/onlinehelp/inquiry.html>お問い合わせ一覧</a><br />
	<a href=http://www.disney.co.jp/privacy/policy.html>個人情報について</a> | <a href=http://www.disney.co.jp/termsofuse.html>利用規約</a> | <a href=http://www.disney.co.jp/legalnotice.html>著作権・商標</a> | <a href=http://secured.disney.co.jp/onlinehelp/shopping_disclaimer.html>（ご注意事項）リンク先ショップの商品掲載について</a> | <a href=http://www.disney.co.jp/corporate.html>企業情報</a> | <a href=https://jobs.disneycareers.jp>採用情報</a> | <a href=http://www.disneyinternational.com>世界のディズニーサイト</a>
	<p>&#169;Disney<br>TM & &#169; Lucasfilm Ltd. All Rights Reserved</p>
	</div>
</footer>
</html>