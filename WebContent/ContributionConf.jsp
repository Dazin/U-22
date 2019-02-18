<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>
    <%@ page import="contribution.IdeaDB"%>




<%

IdeaDB InsertIdea = (IdeaDB)session.getAttribute("InsertIdea");
ArrayList<IdeaDB> DupList = (ArrayList<IdeaDB>)session.getAttribute("DupList");


%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>アイデア投稿</title>
<!-- CSS読み込み -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link href="css/Add.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand mx-auto" href="./Top.jsp">CreateAll</a>


</nav>

<div class="container mb-auto mt-5">
<div class="mx-auto my-5" style="width: 400px;">

<h2>　　入力内容の確認</h2>

</div>
<div class="bg-light mb-5">


<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">アイデア名:</label>
<%=InsertIdea.getName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="genre" class="control-label">ジャンル:</label>
<%=InsertIdea.getGenreName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality1" class="col-form-label">特徴1:</label>
<%=InsertIdea.getQuality1() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality2" class="col-form-label">特徴2:</label>
<%=InsertIdea.getQuality2() %>
</div>


<div class="form-group mx-auto" style="width: 200px;">
<label for="quality3" class="col-form-label">特徴3:</label>
<%=InsertIdea.getQuality3() %>
</div>
<%
for (IdeaDB i  : DupList){
	int Dup = 0;
%>
<%
if(i.getQuality1().equals(InsertIdea.getQuality1())){
	Dup ++;
}
if(i.getQuality2().equals(InsertIdea.getQuality2())){
	Dup ++;
}
if(i.getQuality3().equals(InsertIdea.getQuality3())){
	Dup ++;
}

if(Dup >= 2){
%>
<div class="form-group mx-auto text-danger" style="width: 300px;">
<form action="./DupIdeaServlet" method="post">
<a>※同一ジャンルに複数の同じ特徴を持つアイデアがあります！</a><br>
<button class="btn btn-link" type="submit" name="IdeaNo" value="<%=i.getNo()%>"><%=i.getName()%></button>
</form>
</div>
<%
break;
}
%>
<%
}
%>
<div class="form-group mx-auto" style="width: 400px;">
<label for="quality3" class="col-form-label">詳細:</label>
<br>
<%=InsertIdea.getContent() %>
</div>

<form action="./ContributionInsertServlet" method="post">
<input type="hidden" name="Insert" value="<%=InsertIdea %>">
<div class="form-group mx-auto" style="width: 80px;">
<div class="btn-group">
<a href="./Contribution.jsp" class="btn btn-primary">戻る</a>
<button type="submit" class="btn btn-primary ml-4">確認</button>
</div>
</div>
</form>

</div>


</div>


</body>
</html>