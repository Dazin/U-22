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
<title>Topページ</title>
<!-- CSS読み込み -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="css/Add.css" rel="stylesheet">


<script src="./js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand" href="./Top.jsp">CreateAll</a>

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
<ul class="navbar-nav">
<li class="nav-item">
<a class="btn btn-primary" href="./ContributionServlet">アイデアを投稿</a>
</li>
</ul>
</div>


</nav>




</body>
</html>