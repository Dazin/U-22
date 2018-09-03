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
 <a class="navbar-brand mx-auto" href="./Top.jsp">くりえいとる</a>


</nav>

<div class="container mb-auto mt-5">
<div class="mx-auto my-5" style="width: 400px;">

<h2>新しいアイデアを投稿</h2>

</div>
<div class="bg-light mb-5">

<form action="./ContributionConpServlet" method="post">

<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">アイデア名</label>
<input type="text" name="name" class="form-control" value=""  required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="genre" class="control-label">ジャンル</label>
<select name="genre"size="1"  class="form-control">
<option value="1"selected>食品</option>
<option value="2">電化製品</option>
<option value="3">日用品</option>
<option value="4">家具（インテリア）</option>
<option value="5">その他</option>

</select>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality1" class="col-form-label">特徴1</label>
<input type="text" name="quality1" class="form-control" value=""required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality2" class="col-form-label">特徴2</label>
<input type="text" name="quality2" class="form-control" value=""required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="quality3" class="col-form-label">特徴3</label>
<input type="text" name="quality3" class="form-control" value=""required>
</div>

<div class="form-group mx-auto text-info" style="width: 300px;">
<a>※特徴1、2、3には、そのアイデアを表す　キーワードを3つ入力してください。</a>
<br>
<br>
<a> 例）○○を△△で××するアイデア<br>　　特徴1(○○)　特徴2(△△)　特徴3(××)</a>
</div>


<div class="form-group mx-auto" style="width: 400px;">
<label for="quality3" class="col-form-label">詳細</label>
<textarea name="content" class="form-control" rows="6" required>
</textarea>
</div>

<div class="form-group mx-auto" style="width: 80px;">
<button type="submit" class="btn btn-primary">確認</button>
</div>
</form>

</div>


</div>


</body>
</html>