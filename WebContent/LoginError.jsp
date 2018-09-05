<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>



<%


%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン</title>
<!-- CSS読み込み -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link href="css/Add.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand" href="./Top.jsp">くりえいとる</a>

 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav1" aria-controls="navbarNav1" aria-expanded="false" aria-label="Toggle navigation">
 <span class="navbar-toggler-icon"></span>
 </button>

 <div class="collapse navbar-collapse" id="navbarNav1">

<ul class="navbar-nav mr-auto">
<li class="nav-item">
<a class="nav-link" href="./MypageServlet">マイページ</a>
</li>
<li class="nav-item">
<a class="nav-link" href="./IdeaSearch.jsp">アイデア検索</a>
</li>
<li class="nav-item">
<a class="nav-link" href="./RankingServlet">ランキング</a>
</li>
</ul>


</div>

</nav>

<div class="container">
<div class="mx-auto" style="height:width:auto;">

<form action="./LoginServlet" method="post">


<div class="form-group">
<label for="id" class="col-4 col-form-label">ユーザーID</label>
<div class="col-4">
<input type="text" name="id" class="form-control input-sm" value=""required>
</div>
</div>

<div class="form-group">
<label for="pass" class="col-4 col-form-label">パスワード</label>
<div class="col-4">
<input type="password" name="pass" class="form-control input-sm" value="" required>
</div>
</div>
<a class="text-danger">ご入力されたユーザーID、パスワードが誤っています。</a>
<br>
<a class="text-danger">入力内容をご確認の上、再度ログインしてください。</a>

<div class="form-group">
<label for="" class="col-4 col-form-label"></label>
<div class="col-5">
<button type="submit" class="btn btn-primary">ログイン</button>
<a class="btn btn-primary" href="./Reg.jsp">新規登録</a>
</div>
</div>
</form>
</div>

</div>
</body>
</html>