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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link href="css/Add.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css"/>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


<script src="//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="//cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
<script>

jQuery(function($){
	// ページ最上部へ移動
    $('#pagetop').click(function () {
        $("html,body").animate({scrollTop:0},"300");
    });
    // デフォルトの設定を変更
    $.extend( $.fn.dataTable.defaults, {
        language: {
            url: "http://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
        }
    });

    $("#foo-table").DataTable({
        // 列設定
        columnDefs: [
        	{ targets: [2,4,7,8,11,13,15,17,18], width: 100 },
        	{ targets: [0,1,6,9,10], width: 70 },
        	{ targets: [3], width: 120 },
        	{ targets: [5], width: 30 },
        	{ targets: [12,14,16], width: 160 },

        ],
        scrollX: true,
        // 件数
        lengthChange: false,
        displayLength: 10,
        // 検索機能
        searching: false,
        // ソート機能
        ordering: false,
        // 情報表示
        info: true,
        // ページング機能
        paging: true,
        // 表示位置
        dom:"<'row'<'col-sm-11'p><'col-sm-12'i>>" +
        "<'row'<'col-sm-12 right'l>>"


    });
});

</script>
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
<a class="nav-link" href="./IdeaSearchServlet">アイデア検索</a>
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