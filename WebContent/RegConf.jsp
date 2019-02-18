<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="user.UserDB"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.Date" %>



<%

UserDB RegUser = (UserDB)session.getAttribute("RegUser");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新規登録</title>
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
<div class="mx-auto my-5" style="width: 200px;">

<h2>会員情報確認</h2>

</div>
<div class="bg-light mb-5">

<form action="./RegConpServlet" method="post">

<div class="form-group mx-auto" style="width: 200px;">
<label for="id" class="col-form-label">ユーザーID：</label>
<%=RegUser.getId() %>
</div>

<div class="form-group mx-auto"style="width: 200px;">
<label for="pass" class="col-form-label">パスワード：</label>
<%=RegUser.getPassBrank() %>
</div>
<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">ユーザー名：</label>
<%=RegUser.getName() %>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="sex" class="control-label">性別：</label>
<%
if(RegUser.getSex().equals("0")){
%>
男性
<%
}else{
%>
女性
<%
}
%>

</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="tel" class="col-form-label">電話番号：</label>
<%=RegUser.getTel() %>

</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="address" class="col-form-label">住所：</label>
<%=RegUser.getAddress() %>

</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="post" class="col-form-label">郵便番号：</label>
<%=RegUser.getPost() %>
</div>


<div class="form-group mx-auto" style="width: 80px;">
<div class="btn-group">
<a href="./Reg.jsp" class="btn btn-primary">戻る</a>
<button type="submit" class="btn btn-primary ml-4">確認</button>
</div>
</div>

</form>

</div>


</div>


</body>
</html>