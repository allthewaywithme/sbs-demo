<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/7/26
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>video</title>
</head>
<body>


<a data-toggle="modal" data-target=".bs-example-modal-lg">模态框</a>
<!-- Large modal -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <%--视频模态框--%>
            <video src="../video/hssl.mp4" height="500" controls preload="metadata"></video>
        </div>
    </div>
</div>

</body>
</html>
