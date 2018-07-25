<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/7/23
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>图片上传</div>
<div class="form-group">
    <input id="itemImagers" name="itemImagers" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
</div>

<script>

    //初始化fileinput控件（第一次初始化）
    function initFileInput(ctrlName, uploadUrl) {
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: uploadUrl, //上传的地址
            allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀
            //uploadAsync: false, //插件支持同步和异步
            //showUpload: false, //是否显示上传按钮
        }).on("fileuploaded", function(event, data) {
            //上传图片后的回调函数，可以在这做一些处理
            console.info(data);
        });
    }


    $(function(){
        //指定上传controller访问地址
        var path = 'http://localhost:8080/up/upload';
        //页面初始化加载initFileInput()方法传入ID名和上传地址
        initFileInput("itemImagers",path);
    })

    function uploadImg(){
        $.ajax({
            url: '/product/getProduct?_token='+token,
            type: 'get',
            contentType: "application/json;charset=UTF-8",
            dataType: 'json',
            data: {"companyCode":(new parent.window._user()).getData('venderCode'), //厂商编号
                "productCode":(new parent.window._user()).getData('productCode'),  //产品名称编号
                "modelNumber":(new parent.window._user()).getData('versionCode')  //产品型号
            },
            success:function (result) {
                var pro=result.data[0];
                console.log(pro)
                // $(".selfid").attr("data-id",result.data[0].id);
                // var qw = $(".selfid").attr("data-id");
                proId = result.data[0].id;
                $("#proId").html(result.data[0].id);//给proId赋值
                // var wq = $("#proId").html();//取proId的值

                form.val("summaryVal", { //初始值
                    "proName": pro.proName // "name": "value"
                    ,"productCode": pro.product
                    ,"createTime": pro.createTime
                    ,"actionNum": pro.actionNum
                    ,"networkType": pro.networkType
                    ,"companyCode": pro.vender
                    ,"proDescription":pro.proDescription
                    ,"modelNumber":pro.version
                })
                form.render();

                var uploadInst = upload.render({
                    elem: '#product_logo' //绑定元素
                    ,method:'post'
                    ,url: '/product/uploadImage' //上传接口
                    ,accept: 'images'
                    ,size: 200
                    ,exts:"jpg|png|gif|bmp|jpeg"
                    ,field:"imgFile"
                    ,data: {"_token":token,"proId":proId}
                    ,auto: true
                    // ,bindAction: '#uploadBtn'
                    ,done: function(res){
                        layer.msg("上传头像成功！");
                        document.location.reload();
                        //上传完毕回调
                    }
                    ,error: function(){
                        //请求异常回调
                        layer.msg("上传头像失败！");
                    }
                });
                if(pro.proImg!=null){
                    document.getElementById("img").src =pro.proImg;
                }else {
                    document.getElementById("img").src = "/resource/images/product/Starry.jpg";
                }
            },
            error:function(){

            }

        })
    }



</script>
</body>
</html>
