<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>
    <%@ page import="contribution.IdeaDB"%>
    <%@ page import="user.UserDB"%>



<%

UserDB List=(UserDB)session.getAttribute("LoginUser");
IdeaDB Idea = (IdeaDB)request.getAttribute("Idea");
UserDB User = (UserDB)request.getAttribute("User");


%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Idea.getName() %></title>
<!-- CSS読み込み -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link href="css/Add.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
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


<div class="container mb-auto mt-5">
<div class="mx-auto my-5" style="width: 400px;">


</div>
<div class="bg-light mb-5">

<form action="./LikeInsertSearvlet" method="post">


<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">作成者:</label>
<%=User.getName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">アイデア名:</label>
<%=Idea.getName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="genre" class="control-label">ジャンル:</label>
<%=Idea.getGenreName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality1" class="col-form-label">特徴1:</label>
<%=Idea.getQuality1() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality2" class="col-form-label">特徴2:</label>
<%=Idea.getQuality2() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality3" class="col-form-label">特徴3:</label>
<%=Idea.getQuality3() %>
</div>

<div class="form-group mx-auto" style="width: 400px;">
<label for="quality3" class="col-form-label">詳細:</label>
<br>
<%=Idea.getContent() %>
</div>
<%
if(Idea.getUserNo() != List.getNo()){
%>
<div class="form-group mx-auto" style="width: 80px;">
<input type="hidden" name="IdeaNo" value="<%=Idea.getNo()%>">
<button type="submit" class="btn btn-danger" onclick="this.disabled = true;">Like！</button>
</div>
<%
}
%>
</form>
<br>
</div>


</div>


</body>
</html>