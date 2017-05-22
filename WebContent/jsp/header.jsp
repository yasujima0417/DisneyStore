<%@ page language="java" contentType="text/html charset=UTF-8" %>
<jsp:useBean id="login_user_bean" scope="session" class="login.LoginUserBean"/>

<%-- header --%>

    <%-- ログイン済みの場合はID を表示 --%>
	<a href="http://localhost:8080/DisneyStore/index.jsp"><img class="hidden-xs" width=15%   src="img/disneystore.png" style="margin-left:40% "></a>
    <nav class="navbar navbar-default" style="background:#db0000; color:white; link:white;" >
    <span>
       <div class="container-fluid">
       <div class="navbar-header">
       <button class="navbar-toggle" data-toggle="collapse" data-target="#collapse-target">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>

           <a href="#" class="navbar-brand"><font face="Mickey Mousebats">KT</font></a>
        </div>
        <div class="collapse navbar-collapse" id="collapse-target">
        <ul class="nav navbar-nav">
            <li><a href="#">HOME</a></li>
            <li><a href="#">カテゴリから探す</a></li>
            <li><a href="#">特集から探す</a></li>
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


	</span>

    </nav>
