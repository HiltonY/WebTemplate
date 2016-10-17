<#-- 首页-->
<@compress>
<!DOCTYPE html>
<html>
<head>
    <#include "../common/macro.ftl">
    <title>首页</title>
    <meta charset="utf-8"/>
    <meta name="description" content="页面描述"/>
    <meta name="keywords" content="页面描述"/>
    <@css/>
    <link href="${csRoot}page/index.css" rel="stylesheet" type="text/css"/>
    <style>
        @-webkit-keyframes showAnimation{
            0%{opacity:0;-webkit-transform:scale(0,0);transform:scale(0,0);}
            85%{opacity:1;-webkit-transform:scale(1.05,1.05);transform:scale(1.05,1.05);}
            100%{opacity:1;-webkit-transform:scale(1,1);transform:scale(1,1);}
        }
    </style>
</head>
<body>
<div id="usrLogin"></div>
<@leftMenu menuObj=menuList curMenuId=requestUrl />
<div class="g-bd">
    <div class="g-bdc">
        <div class="u-message u-message-info">welcome</div>
    </div>
</div>
<script src="${nejRoot}"></script>
<script>
    NEJ.define([
        'pro/page/index'
    ], function (m) {
        m._$$Module._$allocate();
    });
</script>
</body>
</html>
</@compress>