<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>wansu_blog</title>
    <!--fonts-->
    <link href='http://fonts.useso.com/css?family=Jockey+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <link href="wansuBlog/css/bootstrap.css" rel="stylesheet">
    <link href="wansuBlog/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Peak Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <!-- js -->
    <script type="text/javascript" src="wansuBlog/js/jquery.min.js"></script>
    <script src="wansuBlog/js/modernizr.custom.97074.js"></script>
    <!-- js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="wansuBlog/js/move-top.js"></script>
    <script type="text/javascript" src="wansuBlog/js/easing.js"></script>

    <link rel="stylesheet" href="common/BeAlert/BeAlert.css">
    <script src="common/BeAlert/BeAlert.js"></script>

    <script type="text/javascript">
//        jQuery(document).ready(function($) {
//            $(".scroll").click(function(event){
//                event.preventDefault();
//                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
//            });
//        });
        

        function messageSubmit(){
            var messageName = document.getElementById("messageName").value;
            var messageEMail = document.getElementById("messageEMail").value;
            var messageSubject = document.getElementById("messageSubject").value;
            var messageMessage = document.getElementById("messageMessage").value;
            if((messageName == null || messageName == "")|| (messageEMail == null || messageEMail == "")
                    || (messageSubject == null || messageSubject == "") || (messageMessage == null || messageMessage == "")){
                alert("失败", "请检查您的内容,不可为空", function () {
                    //after click the confirm button, will run this callback function
                }, {type: 'error', confirmButtonText: 'OK'});
                return;
            }

            var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
            if(!reg.test(messageEMail)){
                alert("失败", "请输入正确的E_Mail地址", function () {
                    //after click the confirm button, will run this callback function
                }, {type: 'error', confirmButtonText: 'OK'});
                return;
            }
            $.ajax({
                url:'wansuBlog/messageSubmit',
                type:'POST', //GET
                async:false,    //或false,是否异步
                data:{
                    messageName : messageName,
                    messageEMail : messageEMail,
                    messageSubject : messageSubject,
                    messageMessage : messageMessage
                },
                timeout:5000,    //超时时间
                dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                success:function(data,textStatus,jqXHR){
                    console.log('成功');
                    alert("成功", "感谢您的留言", function () {
                        //after click the confirm button, will run this callback function
                    }, {type: 'success', confirmButtonText: 'OK'});
                    $('#messageForm')[0].reset();

                },
                error:function(xhr,textStatus){
                    console.log('错误');
                    alert("失败", "请检查您的留言内容", function () {
                        //after click the confirm button, will run this callback function
                    }, {type: 'error', confirmButtonText: 'OK'});

                },
                complete:function(){
                    console.log('结束')
                }
            });
        };
        function subscribeSubmit(){
            var subscribeEMail = document.getElementById("subscribeEMail").value;
            if(subscribeEMail == null || subscribeEMail == ""){
                alert("失败", "请输入E_mail地址", function () {
                    //after click the confirm button, will run this callback function
                }, {type: 'error', confirmButtonText: 'OK'});
                return;
            }else{
                var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
                if(!reg.test(subscribeEMail)){
                    alert("失败", "请输入正确的E_Mail地址", function () {
                        //after click the confirm button, will run this callback function
                    }, {type: 'error', confirmButtonText: 'OK'});
                    return;
                }
            }
            var messageName = null, messageEMail = subscribeEMail,
                    messageSubject = null, messageMessage = "subscribe";
            $.ajax({
                url:'wansuBlog/messageSubmit',
                type:'POST', //GET
                async:false,    //或false,是否异步
                data:{
                    messageName : messageName,
                    messageEMail : messageEMail,
                    messageSubject : messageSubject,
                    messageMessage : messageMessage
                },
                timeout:5000,    //超时时间
                dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                success:function(data,textStatus,jqXHR){
                    console.log('成功');
                    alert("成功", "感谢您的订阅", function () {
                        //after click the confirm button, will run this callback function
                    }, {type: 'success', confirmButtonText: 'OK'});
                    $('#subscribeEMailForm')[0].reset();

                },
                error:function(xhr,textStatus){
                    console.log('错误');
                    alert("失败", "请检查您的邮箱", function () {
                        //after click the confirm button, will run this callback function
                    }, {type: 'error', confirmButtonText: 'OK'});

                },
                complete:function(){
                    console.log('结束')
                }
            });

        };


    </script>
    <!-- start-smoth-scrolling -->
</head>
<body>
<!-- banner -->
<div id="home" class="banner">
    <div class="container">
        <div class="banner-grids">
            <div class="col-md-4 navigation">
                <div class="nav-left">
                    <div class="grid__item color-4">
                        <a class="link link--kumya" href="#home"><span data-letters="WANSU">WS</span></a>
                    </div>
                </div>
                <div class="nav-right">
                    <span class="menu"><img src="wansuBlog/images/menu.png" alt="" /></span>
                    <nav class="cl-effect-1">
                        <ul class="nav1">
                            <li><a class="scroll" href="#home">Home</a></li>
                            <li><a class="scroll" href="#about">About Me</a></li>
                            <li><a class="scroll" href="javascript:window.location.href='recording'">Recording</a></li>
                            <%--<li><a id="test" class="scroll" href="#services"></a></li>--%>
                            <li><a class="scroll" href="#contact">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- script for menu -->
                    <script>
                        $( "span.menu" ).click(function() {
                            $( "ul.nav1" ).slideToggle( 300, function() {
                                // Animation complete.
                            });
                        });
                    </script>
                    <!-- //script for menu -->

                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-8 banner-image text-center">
                <img src="wansuBlog/images/IMG_2470.JPG" alt="这是我们家pizza"/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<script>
//    document.getElementById("test").innerHTML="123";
</script>
<!-- //banner -->
<!-- about -->
<div id="about" class="about">
    <div class="container">
        <div class="about-info">
            <h3>ABOUT ME</h3>
            <h4>Who I am and why I code</h4>
            <p>我是一位正常本科毕业的程序员。虽然说不上从小就想成为一个程序员,至少一直都对黑客有一种梦想。
                奈何小时候的种种原因,最终变成现在的一位java码农。我热爱我的职业,渴望接触和研究最新的技术,虽然我的技术底子还不够硬,
                但是我喜欢这种"技术在手,吃饭不愁"的感觉。向往互联网的扁平化和人性化的生活。喜欢技术改变生活的经历和追求。
            </p>
        </div>
        <div class="about-grids">
            <div class="col-md-6 about-grid">
                <h4>What I do and my experience</h4>
                <p>
                    全程参与南京银行理财资管项目的开发，
                    熟练使用extjs(年轻不懂啊。。。)编写界面，熟练使用maven管理架包，熟练使用ssm框架编写后台，
                    自主独立完成报表的工作。独立完成webservice的接口的编写与联调，与另外的公司联合调通接口，
                    并编写定时任务，完成甲方需求。通过不管review和不断地反思,不停重构自己的代码,力求越来越优化。熟练使用svn和git(目前该网站
                    就是通过git在github上进行版本管理)。
                </p>
            </div>
            <div class="col-md-6 about-grid">
                <h4>My goals</h4>
                <p>在新的一年中,深入对java的线程,垃圾回收等进行深入的了解。并熟悉正规前端的技术,jQuery和前端框架Reactjs,努力使自己往
                精且钻的方向发展。使自己可以独立且自如的完成前端到后台的开发。</p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- my skills -->
<div class="our-skills">
    <div class="container">
        <div class="skill-info">
            <h2>MY SKILLS</h2>
        </div>
        <div class="skill-grids">
            <div class="col-md-3 skills-grid text-center">
                <div class="circle" id="circles-1"></div>
                <p>Java</p>
            </div>
            <div class="col-md-3 skills-grid text-center">
                <div class="circle" id="circles-2"></div>
                <p>HTML/CSS</p>
            </div>
            <div class="col-md-3 skills-grid text-center">
                <div class="circle" id="circles-3"></div>
                <p>Extjs</p>
            </div>
            <div class="col-md-3 skills-grid text-center">
                <div class="circle" id="circles-4"></div>
                <p>React</p>
            </div>
            <div class="clearfix"> </div>
            <script type="text/javascript" src="wansuBlog/js/circles.js"></script>
            <script>
                var colors = [
                    ['#ced7df', '#76b852'], ['#ced7df', '#76b852'], ['#ced7df', '#76b852'], ['#ced7df', '#76b852']
                ];
                for (var i = 1; i < 5; i++) {

                    var child = document.getElementById('circles-' + i);
                    if(i == 1){
                        var percentage = 70;
                    }else if(i == 2){
                        var percentage = 50;
                    }else if(i == 3){
                        var percentage = 70;
                    }else if(i == 4){
                        var percentage = 20;
                    }


                    Circles.create({
                        id:         child.id,
                        percentage: percentage,
                        radius:     80,
                        width:      10,
                        number:   	percentage / 10,
                        text:       '%',
                        colors:     colors[i - 1]
                    });
                }

            </script>
        </div>
    </div>
</div>
<!-- //my skills -->
<%--<div id="portfolio" class="gallery">
    <div class="container">
        <script src="wansuBlog/js/jquery.chocolat.js"></script>
        <link rel="stylesheet" href="wansuBlog/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
        <!--light-box-files -->
        <script type="text/javascript" charset="utf-8">
            $(function() {
                $('.gallery a').Chocolat();
            });
        </script>
        <h3>PORTFOLIO</h3>
        <section>
            <ul id="da-thumbs" class="da-thumbs">
                <li>
                    <a href="wansuBlog/images/a1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a1.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a2.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a3.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a4.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a5.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a6.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a7.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a1.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <li>
                    <a href="wansuBlog/images/a2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                        <img src="wansuBlog/images/a2.jpg" alt="" />
                        <div>
                            <h5>VIEW</h5>

                        </div>
                    </a>
                </li>
                <div class="clearfix"> </div>
            </ul>
        </section>
        <script type="text/javascript" src="wansuBlog/js/jquery.hoverdir.js"></script>
        <script type="text/javascript">
            $(function() {
                $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
            });
        </script>
    </div>
</div>--%>
<!--//gallery-->
<!--services-->
<!-- <div id="services" class="services">
	<div class="container">
		<div class="ser-head">
			<h3>FEATURED SERVICES</h3>
		</div>
		<div class="wel-grids">
			<div class="col-md-4 wel-grid text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="col-md-4 wel-grid btm-gre text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="col-md-4 wel-grid text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="col-md-4 wel-grid btm-gre text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="col-md-4 wel-grid text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="col-md-4 wel-grid btm-gre text-center">
				<div class="btm-clr">
					<figure class="icon">
						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					</figure>
					<h3>VOLUPTATEM</h3>
					<p> Nemo enim ipsam voluptatem
					quia voluptas sit aspernatur aut
					odit aut fugi.</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div> -->
<!--//services-->
<!--news-->
<div class="news">
    <div class="container">
        <h3>NEWSLETTER SIGN UP</h3>
        <p> 如果需要联系我,请留下您的E-Mail,我将尽快跟您联系 </p>
        <div class="na-m">
            <div class="name">
                <form id="subscribeEMailForm">
                    <input type="text" id="subscribeEMail" placeholder="Enter email id" required="">
                </form>
            </div>
            <div class="button">
                <form>
                    <input type="button" value="Subscribe" onclick="subscribeSubmit()">
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//news-->
<!-- get-in -->
<div id="contact" class="get-in-touch">
    <div class="container">
        <div class="get-info text-center">
            <h3>GET IN TOUCH</h3>
            <h4><i>Feel Free To Contact Us</i></h4>
            <p>如果有什么建议需要提供给我,请在下面告知我您的建议,我会看到后尽快给您回复</p>
        </div>
    </div>
</div>
<!-- //get-in -->
<!-- contact-us -->
<div class="contact-us">
    <div class="container">
        <div class="contact-grids">
            <div class="col-md-4 contact-grid text-center">
                <div class="point-icon"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></div>
                <p>江苏省南京市</p>
            </div>
            <div class="col-md-4 contact-grid text-center">
                <div class="point-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></div>
                <p><a href="mailto:wanwait@hotmail.com">wanwait@hotmail.com</a></p>
            </div>
            <div class="col-md-4 contact-grid text-center">
                <div class="point-icon"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></div>
                <p>+86 ..........</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="contact-info">
            <form id="messageForm">
                <input type="text" id="messageName" placeholder="Your Name" required>
                <input type="text" id="messageEMail" placeholder="Your E-Mail" required>
                <input type="text" id="messageSubject" placeholder="Subject" required>
                <textarea id="messageMessage" placeholder="Your Message" required></textarea>
                <%--<input type="submit" value="SEND MESSAGE" onclick="messageSubmit()">--%>
                <%--<button onclick="messageSubmit()">SEND MESSAGE</button>--%>
                <input type="button" value="SEND MESSAGE" onclick="messageSubmit()">
            </form>

        </div>
    </div>
</div>
<!-- //contact-us -->
<!-- footer -->
<div class="copy-right">
    <div class="container">
        <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://139.196.24.24:8080/viewWorld" target="_blank" title="viewworld">viewworld</a> <!-- - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> --></p>
    </div>
</div>
<!-- footer -->
<!-- smooth scrolling -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
</body>
</html>