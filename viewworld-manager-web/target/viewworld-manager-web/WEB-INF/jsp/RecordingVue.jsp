<%--
  Created by IntelliJ IDEA.
  User: franck
  Date: 17/2/19
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>iview example</title>
    <link rel="stylesheet" type="text/css" href="http://unpkg.com/iview/dist/styles/iview.css">
    <script type="text/javascript" src="http://v1.vuejs.org/js/vue.min.js"></script>
    <script type="text/javascript" src="http://unpkg.com/iview@1.0.1/dist/iview.min.js"></script>
    <style type="text/css">
        .layout{
            border: 1px solid #d7dde4;
            background: #f5f7f9;
            position: relative;
        }
        .layout-breadcrumb{
            padding: 10px 15px 0;
        }
        .layout-content{
            min-height: 600px;
            margin: 15px;
            overflow: hidden;
            background: #fff;
            border-radius: 4px;
        }
        .layout-content-main{
            padding: 10px;
        }
        .layout-copy{
            text-align: center;
            padding: 10px 0 20px;
            color: #9ea7b4;
        }
        .layout-menu-left{
            background: #464c5b;
        }
        .layout-header{
            height: 60px;
            background: #fff;
            box-shadow: 0 1px 1px rgba(0,0,0,.1);
        }
        .layout-logo-left{
            width: 90%;
            height: 30px;
            background: #5b6270;
            border-radius: 3px;
            margin: 15px auto;
        }
    </style>
</head>
<body>
<div id="app">
    <div class="layout">
        <Row type="flex">
            <i-col span="5" class="layout-menu-left">
                <Menu active-name="1-2" theme="dark" width="auto" :open-names="['1']">
                    <div class="layout-logo-left"></div>
                    <Submenu name="1">
                        <template slot="title">
                            <Icon type="ios-navigate"></Icon>
                            导航一
                        </template>
                        <Menu-item name="1-1">选项 1</Menu-item>
                        <Menu-item name="1-2">选项 2</Menu-item>
                        <Menu-item name="1-3">选项 3</Menu-item>
                    </Submenu>
                    <Submenu name="2">
                        <template slot="title">
                            <Icon type="ios-keypad"></Icon>
                            导航二
                        </template>
                        <Menu-item name="2-1">选项 1</Menu-item>
                        <Menu-item name="2-2">选项 2</Menu-item>
                    </Submenu>
                    <Submenu name="3">
                        <template slot="title">
                            <Icon type="ios-analytics"></Icon>
                            导航三
                        </template>
                        <Menu-item name="3-1">选项 1</Menu-item>
                        <Menu-item name="3-2">选项 2</Menu-item>
                    </Submenu>
                </Menu>
            </i-col>
            <i-col span="19">
                <div class="layout-header"></div>
                <div class="layout-breadcrumb">
                    <Breadcrumb>
                        <Breadcrumb-item href="#">首页</Breadcrumb-item>
                        <Breadcrumb-item href="#">应用中心</Breadcrumb-item>
                        <Breadcrumb-item>某应用</Breadcrumb-item>
                    </Breadcrumb>
                </div>
                <div class="layout-content">
                    <div class="layout-content-main">内容区域</div>
                </div>
                <div class="layout-copy">
                    2011-2016 &copy; TalkingData
                </div>
            </i-col>
        </Row>
    </div>
</div>

<script>
    new Vue({
        el: '#app'

    });

</script>
</body>
</html>