<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2019/7/19
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>添加日程</title>
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row" style="margin-top: 20px">
        <form class="col-10 m-auto" method="post" action="${pageContext.request.contextPath}/page/addStaff">
            <div class="form-group">
                <label class="sr-only"></label>
                <input type="text" class="form-control" name="id" placeholder="请输入工号" value="${id}">
            </div>

            <div class="form-group">
                <label class="sr-only"></label>
                <input type="text" class="form-control" name="name" placeholder="请输入姓名">
            </div>

            <div class="form-group">
                <label class="sr-only"></label>
                <input type="text" class="form-control" name="team" placeholder="请输入所在团队">
            </div>

            <div class="form-group">
                <label class="sr-only"></label>
                <input type="text" class="form-control" name="department" placeholder="请输入部门">
            </div>

            <div class="form-group">
                <label class="sr-only"></label>
                <input type="text" class="form-control" name="phone" placeholder="请输入手机号，非必须">
            </div>


            <div class="form-group">
                <label for="sel1" class="sr-only"></label>
                <select class="form-control" id="sel1" name="sex">
                    <option>男</option>
                    <option>女</option>
                </select>
            </div>

            <div class="form-group">
                <label class="sr-only"></label>
                <button type="submit" id="submit" class="btn btn-block btn-success">添加</button>
            </div>

        </form>
    </div>

</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendor/jquery/jquery.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/regist.js"></script>
<script>
    $(document).ready(function () {
        var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引
        $('#submit').on('click', function () {
            parent.layer.close(index); //执行关闭
        });
    })

</script>
</body>
</html>
