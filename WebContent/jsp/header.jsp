<%@ page language="java" contentType="text/html charset=UTF-8" %>
<jsp:useBean id="login_user_bean" scope="session" class="login.LoginUserBean"/>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/shopping.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<%-- header --%>
<header>
    <%-- ログイン済みの場合はID を表示 --%>

    <img class="headerimg" width=15%  src="img/disneystore.png">

    <span class="header">


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
    </span>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin="anonymous"></script>
</header>
