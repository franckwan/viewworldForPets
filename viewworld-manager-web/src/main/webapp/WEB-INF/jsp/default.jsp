<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>View World</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="viewworld/css/ie/html5shiv.js"></script><![endif]-->
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script src="viewworld/js/skel.min.js"></script>
    <script src="viewworld/js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="viewworld/css/skel.css" />
        <link rel="stylesheet" href="viewworld/css/style.css" />
        <link rel="stylesheet" href="viewworld/css/style-wide.css" />
        <link rel="stylesheet" href="viewworld/css/style-noscript.css" />
    </noscript>
    <!--[if lte IE 9]><link rel="stylesheet" href="viewworld/css/ie/v9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="viewworld/css/ie/v8.css" /><![endif]-->

    <style type="text/css">
        .test_img{
            opacity:0.6;
            filter:alpha(opacity=60);
        }
        .test_img{
            /*margin-top: 100px; */
            width:50px;
            height:50px;
            border-radius:50px;
        }
    </style>
    <script type="text/javascript">
        var img = document.getElementById('test_imgid');
        function bigger(){
            img.style.width = '400px';
            img.style.height = '400px';
        }

        function smaller(){
            img.style.width = '100px';
            img.style.height = '100px';
        }
    </script>

    <script type="text/javascript">
        function loadXMLDoc() {
            $.ajax({
                url:'test/test',
                type:'POST', //GET
                async:true,    //或false,是否异步
                data:{
                    name:'yang',age:25
                },
                timeout:5000,    //超时时间
                dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                success:function(data,textStatus,jqXHR){
                    console.log('结束');
                },
                error:function(xhr,textStatus){

                },
                complete:function(){
                    console.log('结束')
                }
            });


        };
    </script>
</head>
<body class="loading">
<div id="wrapper">
    <div id="bg"></div>
    <div id="overlay"></div>
    <div id="main">

        <!-- Header -->
        <header id="header">
            <h1>View World</h1>
            <p>Whatever is worth doing at all is worth doing well</p>
            <nav>
                <ul>
                    <li><a href="#" ><img class="test_img" id="test_imgid" onmouseover="bigger()" onmouseout="smaller()" src="viewworld/css/images/timg.jpeg" style="cursor:pointer;width:50px;height:50px;"></a></li>
                    <li><a href="javascript:window.location.href='blog'" ><img class="test_img" src="viewworld/css/images/IMG_2470.JPG" height="50px" width="50px"></a></li>
                    <li><a href="#" ><img class="test_img" src="viewworld/css/images/timg.jpeg" height="50px" width="50px"></a></li>
                    <li><a href="#" ><img class="test_img" src="viewworld/css/images/timg.jpeg" height="50px" width="50px"></a></li>
                    <li><a href="#" ><img class="test_img" src="viewworld/css/images/timg.jpeg" height="50px" width="50px"></a></li>
                </ul>
            </nav>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <span class="copyright">&copy; ViewWorld. Design: <a href="#">HTML5 UP</a>.</span>
        </footer>

    </div>
</div>
</body>
</html>