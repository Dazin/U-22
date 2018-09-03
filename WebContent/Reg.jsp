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
<title>新規登録</title>
<!-- CSS読み込み -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link href="css/Add.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

<script type="text/javascript">
<!--
  function CheckPass(input){
    var getPass = pass.value;
    var getPassConf = passConf.value;
    console.dir(getPass);
    console.dir(getPassConf);

    // パスワードの一致確認
    if(getPass != getPassConf){
      passConf.setCustomValidity('パスワードが一致しません'); // エラーメッセージのセット
    }else{
      passConf.setCustomValidity(''); // エラーメッセージのクリア
    }
  }
// -->

</script>
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a class="navbar-brand mx-auto" href="./Top.jsp">くりえいとる</a>


</nav>

<div class="container mb-auto mt-5">
<div class="mx-auto my-5" style="width: 200px;">

<h2>会員情報入力</h2>

</div>
<div class="bg-light mb-5">

<form action="./RegServlet" method="post">

<div class="form-group mx-auto" style="width: 200px;">
<label for="id" class="col-form-label">ユーザーID</label>
<input type="text" name="id" class="form-control" value="" placeholder="半角英数字" required>
</div>

<div class="form-group mx-auto"style="width: 200px;">
<label for="pass" class="col-form-label">パスワード</label>
<input type="password" name="pass" class="form-control" value="" id="pass" pattern="(?=.*[a-z]).{6,}" placeholder="6文字以上の半角英数字" required onChange="CheckPass()">
</div>

<div class="form-group mx-auto"style="width: 200px;">
<label for="pass" class="col-form-label">パスワード（確認）</label>
<input type="password"  name="passConf" class="form-control" value="" id="passConf" pattern="(?=.*[a-z]).{6,}" placeholder="6文字以上の半角英数字" required  onChange="CheckPass()">
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="name" class="col-form-label">ユーザー名</label>
<input type="text" name="name" class="form-control" value=""required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="sex" class="control-label">性別</label>
<select name="sex"size="1"  class="form-control">
<option value="0"selected>男性</option>
<option value="1">女性</option>
</select>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="tel" class="col-form-label">電話番号</label>
<input type="number" name="tel" class="form-control" placeholder="ハイフンなし半角数字" value=""required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="address" class="col-form-label">住所</label>
<input type="text" name="address" class="form-control" value=""required>
</div>

<div class="form-group mx-auto" style="width: 200px;">
<label for="post" class="col-form-label">郵便番号</label>
<input type="number" name="post" class="form-control" placeholder="ハイフンなし半角数字" onKeyUp="AjaxZip3.zip2addr(this,'','address','address') value=""required>
</div>

<div class="form-group mx-auto" style="width: 80px;">
<button type="submit" class="btn btn-primary">確認</button>
</div>
</form>

</div>


</div>


</body>
</html>