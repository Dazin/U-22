<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>
    <%@ page import="contribution.IdeaDB"%>


<%

ArrayList<IdeaDB> arrayList= (ArrayList<IdeaDB>)session.getAttribute("UserIdeaList");
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
 <a class="navbar-brand" href="./Top.jsp">くりえいとる</a>

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
<table id="foo-table" border=1 class="table table-striped table-bordered mx-auto">

<thead>
<tr>
<th>マイアイデア名</th>
<th>状態</th>


</tr>
</thead>
<%
	for (IdeaDB i  : arrayList) {
%>


<tbody>

<tr>
<td><button class="btn btn-link" type="submit" name="IdeaNo" value="<%=i.getNo()%>"><%=i.getName()%></button></td>
<%
	System.out.println(i.getStatus());
	switch(Integer.parseInt(i.getStatus())) {
	case 1:
		StatusName = "審査中";
	    break;
	case 2:
		StatusName = "申請中";
	    break;
	case 3:
		StatusName = "くりえい";
	    break;
	case 4:
		StatusName = "審査落ち";
	    break;
	default:
		StatusName = "審査待ち";
	}
%>
<td><%=StatusName %></td>

</tr>
<%
	}
%>

</tbody>

</table>
</form>
</div>
<a href="#" class="btn btn-primary">出金申請</a>
<a href="./LogoutServlet" class="btn btn-primary">ログアウト</a>

</div>



</body>
</html>