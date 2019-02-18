<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>
    <%@ page import="contribution.IdeaDB"%>
    <%@ page import="user.MailDB"%>
    <%@ page import="user.MfDB"%>

<%

ArrayList<IdeaDB> UList= (ArrayList<IdeaDB>)session.getAttribute("UserIdeaList");
ArrayList<MailDB> MList= (ArrayList<MailDB>)session.getAttribute("UserMailList");
ArrayList<MfDB> MfList= (ArrayList<MfDB>)session.getAttribute("UserMfList");

String StatusName ="";

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>マイページ</title>
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
<li class="nav-item active">
<a class="nav-link" href="./MypageServlet" >マイページ</a>
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

<div class="container">
<div class="box">

<form action="./IdeaPageServlet" method="post">
<br>

<button class="btn btn-outline-info btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse-accordion-1">
マイアイデア一覧
</button>

<div id="collapse-accordion-1" class="collapse" data-parent="#collapse-accordion">
<div class="card-body">
<table id="foo-table" border=1 class="table table-striped table-bordered mx-auto">

<thead>
<tr>
<th>マイアイデア名</th>
<th>状態</th>


</tr>
</thead>
<%
	for (IdeaDB i  : UList) {
%>


<tbody>

<tr>
<td><button class="btn btn-link" type="submit" name="IdeaNo" value="<%=i.getNo()%>"><%=i.getName()%></button></td>
<%
	switch(Integer.parseInt(i.getStatus())) {
	case 1:
		StatusName = "アイデア";
	    break;
	case 2:
		StatusName = "くりえい";
	    break;
	case 3:
		StatusName = "開発中";
	    break;
	default:
		StatusName = "現実化！";
	}
%>
<td><%=StatusName %></td>

</tr>
<%
	}
%>

</tbody>

</table>

</div>
</div>
</form>
<button class="btn mt-2 btn-outline-info btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse-accordion-2">
協力アイデア一覧
</button>
<button class="btn mt-2 btn-outline-info btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse-accordion-3">
メール一覧
</button>
<form action="./MailPageServlet" method="post">

<div id="collapse-accordion-3" class="collapse" data-parent="#collapse-accordion">
<div class="card-body">
<table id="foo-table" border=1 class="table table-striped table-bordered mx-auto">

<thead>
<tr>
<th>件名</th>
<th>差出人</th>



</tr>
</thead>
<%
	for (MailDB m  : MList) {
%>


<tbody>

<tr>
<td><button class="btn btn-link" type="submit" name="MailNo" value="<%=m.getId()%>"><%=m.getSubject()%></button></td>
<td><%=m.getFrom_name() %></td>


</tr>
<%
	}
%>

</tbody>

</table>

</div>
</div>
</form>
</div>
<a href="./LogoutServlet" class="btn btn-primary">ログアウト</a>

</div>



</body>
</html>