<@compress>
<!DOCTYPE html>
<html>
<head>
    <#include "/common/macro.ftl">
    <title>nei测试页面</title>
    <meta charset="utf-8"/>
    <meta name="description" content="页面描述"/>
    <meta name="keywords" content="页面描述"/>

    <@css/>
    <link href="${csRoot}page/test/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<#-- 左侧导航页面-->
<@leftMenu menuObj=menuList curMenuId=requestUrl />
<#-- 右侧内容页面 -->
<div class="g-bd">
    <div class="g-bdc">
        <div class="m-header">test页面详情页面</div>
        <#-- 内容区域-->
        <div id="app"></div>
    </div>
</div>
<script>
     window._data_ = {
        detailObj: ${stringify(detailObj!{})}
    };
</script>
<script src="${nejRoot}"></script>
<script>
    NEJ.define([
        'pro/page/test/detail'
    ], function (m) {
        m._$$Module._$allocate();
    });
</script>
</body>
</html>
</@compress>