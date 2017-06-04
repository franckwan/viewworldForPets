<%--
  Created by IntelliJ IDEA.
  User: franck
  Date: 17/2/19
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recording</title>
    <link rel="stylesheet" type="text/css" href="common/button/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" type="text/css" href="common/button/css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="common/button/css/demo2.css">
    <script type="text/javascript" src="wansuBlog/js/jquery.min.js"></script>



    <title>blog</title>
    <style type="text/css">
        #banner{
            width:100%;
            height: 100px;
            background:#ced7df;
        }
        .nav-left a {
            font-size: 4em;
            font-weight: 600;
            color: #23232b;
            text-transform: uppercase;
            text-decoration: none;
            font-family: 'Jockey One', sans-serif;
        }
        .nav-left {
            width: 29.2%;
            float:left;
            margin: 0 0 0 150px;
        }
        .nav-right{
            margin: 0 20px 0 0;
        }
        .menu_class{
            background:#76b852;
            width:100%;
            height: 100px;
        }
        .menu_class li{
            list-style:none; /* 去掉ul前面的符号 */
            float:left;
            width: auto;
            border: 1px #4e667d solid; /* 边框 */
            line-height: 1.35em; /* 行高 */
            padding: 4px 20px; /* 内部填充的距离 */
            text-decoration: none; /* 不显示超链接下划线 */
        }
        .btn-line{
            display:inline;
            margin-left: 60px;
        }
    </style>

</head>
<body>
<div id="banner">
    <div>
        <div class="nav-left">

            <div class="grid__item color-4">
                <a class="link link--kumya" href="#home"><span data-letters="WANSU">WANSU</span></a>

            </div>
        </div>

        <div class="nav-right">
            <img src="wansuBlog/images/IMG_2470.JPG" height="100px" width="100px" alt="这是我们家pizza"/>
        </div>
    </div>
</div>
<div class="menu_class">
    <div class="row pad-15">
        <div class="btn-line">
            <a href="javascript:window.location.href='recordingAdd'" class="btn btn-lg red">新增</a>
        </div>

        <div class="btn-line">
            <a href="#" class="btn btn-lg blue" onclick="showEssayWhole()">删除</a>
        </div>

        <%--<div class="btn-line">--%>
            <%--<a href="#" class="btn btn-lg orange">button</a>--%>
        <%--</div>--%>

        <%--<div class="btn-line">--%>
            <%--<a href="#" class="btn btn-lg green">button</a>--%>
        <%--</div>--%>
    </div>

</div>
<div id="essay_list">

</div>
<div class="btn-line">
    <a href="javascript:window.location.href='blog'" class="btn btn-lg red">返回</a>
</div>

<script>
    var essayList;
    $.ajax({
        url:'wansuBlog/getEssayList',
        type:'POST', //GET
        async:false,    //或false,是否异步
        timeout:5000,    //超时时间
        dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text

        success:function(data,textStatus,jqXHR){
            console.log('成功');
            essayTest = data[0].essay;
            titleTest = data[0].title;
            showEssay(data);

        },
        error:function(xhr,textStatus){


        },
        complete:function(){
            console.log('结束')
        }
    });
    function showEssay(data){
        var essay = ''  ;
        for(var i = 0 ; i < data.length ; i++){
            var essaytitle = data[i].title.toString();
            var essayMessage = data[i].essay;
            var updatetime = data[i].updatetime;
            var subject = data[i].subject;
            essay = essay + '<div class="wz"> <h3><a href="javascript:void(0)" onclick="showEssayWhole(' + updatetime +')">'+essaytitle+'</a></h3>' +
                    ' <dl><dd> <p class="dd_text_1">' +
//                    essayMessage +
                    '</p> <p class="dd_text_2"> <span class="left author"></span><span class="left sj">时间:'+ updatetime +'</span> ' +
                    '<span class="left fl">分类:<a href="#" title="subject">subject</a></span><span class="left yd">' +
                    '</span> <div class="clear"></div> </p> </dd> <div class="clear">' +
                    '</div> </dl> </div> </br> </br>' ;
        }
        essayList = essay;
    }

    $('#essay_list').html(essayList);

    $('a').click(
            function(){
                var title = $(this).html();
                if(title == "新增" || title == "删除"){

                }else{
//                    window.alert($(this).html());
                    showEssayWhole(title);
                }

                //window.alert('ok');
            });

    function showEssayWhole(essaytitle){
        $.ajax({
            url:'wansuBlog/getEssayWhole',
            type:'POST', //GET
            async:false,    //或false,是否异步
            timeout:5000,    //超时时间
            dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text,
            data:{
                title : essaytitle
            },
            success:function(data,textStatus,jqXHR){
                var essay = '';
                essay += data.essay;
                $('#essay_list').html(essay);
            },
            error:function(xhr,textStatus){
                var essay = '';
                essay += xhr.responseText;
                $('#essay_list').html(essay);
            },
            complete:function(){
            }
        });

    }
</script>
</body>
</html>
