<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/upload/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="../themes/explorer-fa/theme.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="../plugins/jQuery/jquery-3.3.1.min.js"></script>
    <script src="../js/plugins/sortable.js" type="text/javascript"></script>
    <script src="../js/fileinput.js" type="text/javascript"></script>
    <script src="../js/locales/fr.js" type="text/javascript"></script>
    <script src="../js/locales/es.js" type="text/javascript"></script>
    <script src="../themes/explorer-fa/theme.js" type="text/javascript"></script>
    <script src="../themes/fa/theme.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container kv-main">
    <%--<div class="page-header">
        <h1>Bootstrap File Input Example
            <small><a href="https://github.com/kartik-v/bootstrap-fileinput-samples"><i
                    class="glyphicon glyphicon-download"></i> Download Sample Files</a></small>
        </h1>
    </div>--%>
    <div> ${imagesPath}</div>
    <form enctype="multipart/form-data">
        <div class="file-loading">
            <input id="kv-explorer" name="kv-explorer" type="file" multiple>
        </div>
        <br>
        <%--<div class="file-loading">
            <input id="file-0a" class="file" type="file" multiple data-min-file-count="1">
        </div>
        <br>--%>
        <%--刷新--%>
        <button type="submit" class="btn btn-primary">Submit</button>
        <%--重置--%>
        <button type="reset" class="btn btn-default">Reset</button>
    </form>
    <hr>
    <%--<form enctype="multipart/form-data">
        <label for="file-0b">Test invalid input type</label>
        <div class="file-loading">
            <input id="file-0b" name="file-0b" class="file" type="text" multiple data-min-file-count="1">
        </div>
        <script>
            $(document).on('ready', function () {
                $("#file-0b").fileinput();
            });
        </script>
    </form>
    <hr>--%>
    <%--<form enctype="multipart/form-data">
        <div class="file-loading">
            <input id="file-0c" class="file" type="file" multiple data-min-file-count="3">
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input id="file-0d" class="file" type="file">
            </div>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
            </div>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input id="file-2" type="file" class="file" readonly data-show-upload="false">
            </div>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <label>Preview File Icon</label>
                <input id="file-3" type="file" multiple>
            </div>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input id="file-4" type="file" class="file" data-upload-url="#">
            </div>
        </div>
        <hr>
        <div class="form-group">
            <button class="btn btn-warning" type="button">Disable Test</button>
            <button class="btn btn-info" type="reset">Refresh Test</button>
            <button class="btn btn-primary">Submit</button>
            <button class="btn btn-default" type="reset">Reset</button>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input type="file" class="file" id="test-upload" multiple>
            </div>
            <div id="errorBlock" class="help-block"></div>
        </div>
        <hr>
        <div class="form-group">
            <div class="file-loading">
                <input id="file-5" class="file" type="file" multiple data-preview-file-type="any" data-upload-url="#">
            </div>
        </div>
    </form>--%>


    <%--<hr>
    <h4>Multi Language Inputs</h4>
    <form enctype="multipart/form-data">
        <label>French Input</label>
        <div class="file-loading">
            <input id="file-fr" name="file-fr[]" type="file" multiple>
        </div>
        <hr style="border: 2px dotted">
        <label>Spanish Input</label>
        <div class="file-loading">
            <input id="file-es" name="file-es[]" type="file" multiple>
        </div>
    </form>--%>
    <hr>
    <br>
</div>

<script>
    $('#file-fr').fileinput({
        theme: 'fa',
        language: 'fr',
        uploadUrl: '#',
        allowedFileExtensions: ['jpg', 'png', 'gif']
    });
    $('#file-es').fileinput({
        theme: 'fa',
        language: 'es',
        uploadUrl: '#',
        allowedFileExtensions: ['jpg', 'png', 'gif']
    });
    $("#file-0").fileinput({
        theme: 'fa',
        'allowedFileExtensions': ['jpg', 'png', 'gif']
    });
    $("#file-1").fileinput({
        theme: 'fa',
        uploadUrl: '/up/upload', // you must set a valid URL here else you will get an error
        allowedFileExtensions: ['jpg', 'png', 'gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function (filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });
    /*
     $(".file").on('fileselect', function(event, n, l) {
     alert('File Selected. Name: ' + l + ', Num: ' + n);
     });
     */
    /*$("#file-3").fileinput({
        theme: 'fa',
        showUpload: false,
        showCaption: false,
        browseClass: "btn btn-primary btn-lg",
        fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        overwriteInitial: false,
        initialPreviewAsData: true,
        initialPreview: [
            "http://lorempixel.com/1920/1080/transport/1",
            "http://lorempixel.com/1920/1080/transport/2",
            "http://lorempixel.com/1920/1080/transport/3"
        ],
        initialPreviewConfig: [
            {caption: "transport-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
            {caption: "transport-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
            {caption: "transport-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
        ]
    });*/
   /* $("#file-4").fileinput({
        theme: 'fa',
        uploadExtraData: {kvId: '10'}
    });
    $(".btn-warning").on('click', function () {
        var $el = $("#file-4");
        if ($el.attr('disabled')) {
            $el.fileinput('enable');
        } else {
            $el.fileinput('disable');
        }
    });
    $(".btn-info").on('click', function () {
        $("#file-4").fileinput('refresh', {previewClass: 'bg-info'});
    });*/
    /*
     $('#file-4').on('fileselectnone', function() {
     alert('Huh! You selected no files.');
     });
     $('#file-4').on('filebrowse', function() {
     alert('File browse clicked for #file-4');
     });
     */
    $(document).ready(function () {
        $("#test-upload").fileinput({
            'theme': 'fa',
            'showPreview': false,
            'allowedFileExtensions': ['jpg', 'png', 'gif'],
            'elErrorContainer': '#errorBlock'
        });
        $("#kv-explorer").fileinput({
            'theme': 'explorer-fa',
            'uploadUrl': '/up/upload',
            overwriteInitial: false,
            initialPreviewAsData: true,
            initialPreview: [
                /*"http://lorempixel.com/1920/1080/nature/1",
                "http://lorempixel.com/1920/1080/nature/2",
                "http://lorempixel.com/1920/1080/nature/3"*/
            ],
            initialPreviewConfig: [
                /*{caption: "nature-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
                {caption: "nature-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
                {caption: "nature-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}*/
            ]
        }).on('fileuploaded', function(event, data, id, index) {//上传成功之后的处理
            console.log("成功了！");
            console.log(data.response.code);
            console.log(data.response.data);
            // debugger;
            $('#kv-success-1 ul').append(out);
            $('#kv-success-1').fadeIn('slow');
        });
        /*
        页面加载时初始化上传弹框回调函数
        $("#kv-explorer").on('fileloaded', function(event, file, previewId, index) {
             console.log("成功了！");
            alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
         });*/
    });
</script>


</body>
</html>