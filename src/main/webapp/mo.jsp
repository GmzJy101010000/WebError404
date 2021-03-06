<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 模态框（Modal）插件</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->

<%String  aa="fsd";%>
    <a href="javascript:void(-1);" onclick="show_modal();">  开始演示模态框</a>
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                  <%=aa%>
                </h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <div class="form-group">
                        <label>name:</label>
                <input id="id_name" name="name" type="text" value="">
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="id_ad_search">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script>
    function show_modal() {
         $('#myModal').modal('show');
    }
    $(function () {
        $('#id_ad_search').click(function () {
           var name = $('#id_name').val();
           $("#myModal .modal-title").html(name);
         // alert($("#myModal .modal-title").html());

        });

    });

</script>
</body>

</html>