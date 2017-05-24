<%@ page language="java" contentType="text/html charset=UTF-8" %>
<jsp:useBean id="login_user_bean" scope="session" class="login.LoginUserBean"/>

<%-- header --%>

    <%-- ログイン済みの場合はID を表示 --%>
	<a href="http://localhost:8080/DisneyStore/index.jsp"><img class="hidden-xs" width=25%   src="http://store.disney.co.jp/images/common/img_shoplogo_pc.png" style="margin-left:35% "></a>
    <nav class="navbar navbar-default" style="background:#db0000; color:white;" >
    <span>
       <div class="container-fluid">
       <div class="navbar-header">
       <button class="navbar-toggle" data-toggle="collapse" data-target="#collapse-target">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>

           <a href="javascript:void(0)"id="home2" class="navbar-brand" style="color:white;"><font face="Mickey Mousebats">KT</font></a>
        </div>
        <div class="collapse navbar-collapse" id="collapse-target" >
        <ul class="nav navbar-nav">
            <li><a href="javascript:void(0)" id="home"  style="color:white;">HOME</a></li>
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" style="color:white;">カテゴリから探す</a>
            	<ul class="dropdown-menu" role="menu">

            		<li><a href="javascript:void(0)" id="fassion">ファッション</a></li>
            		<li><a href="javascript:void(0)" id="zakka">雑貨</a></li>
            		<li><a href="javascript:void(0)" id="nuigurumi">ぬいぐるみ</a></li>
            	</ul>

            </li>
            <li><a href="#" style="color:white;">特集から探す</a></li>
        </ul>
        <form class="navbar-form navbar-right">
	   Welcome「<jsp:getProperty name="login_user_bean" property="name" />」さん！
        <%-- Getのクエリで購入履歴かログアウトか判断させる --%>
        <a href="ShoppingServlet?submit=history">購入履歴</a>
        <a href="LoginServlet?submit=logout">ログアウト</a>
      <div class="input-group">
            <input type="text" class="form-control">
             <span class="input-group-btn">
              <button class="btn btn-primary" type="submit">
                <i class='glyphicon glyphicon-search'></i>
              </button>
            </span>
          </div>
     </form>
		</div>

</div>
	</span>

    </nav>
<form id="form5" name="formHome" method="post" action="ShoppingServlet">
</form>
<form id="form4" name="formHome" method="post" action="ShoppingServlet">
</form>
<form id="form1" name="formFassion" method="post" action="ShoppingServlet2">
<input type=hidden name="category" value="ファッション">
</form>
<form id="form2" name="formZakka" method="post" action="ShoppingServlet2">
<input type=hidden name="category" value="雑貨">
</form>
<form id="form3" name="formNuigrumi" method="post" action="ShoppingServlet2">
<input type=hidden name="category" value="ぬいぐるみ">
</form>


