<#include "../common/config.ftl">
<#include "../common/function.ftl">

<#macro css>
 <link rel="stylesheet" href="${bootstrapRoot}/dist/css/bootstrap.css">
  <link href="${csRoot}animate.css" rel="stylesheet" type="text/css"/>
  <link href="${csRoot}reset.css" rel="stylesheet" type="text/css"/>
  <link href="${csRoot}icon.css" rel="stylesheet" type="text/css"/>
  <link href="${csRoot}project.css" rel="stylesheet" type="text/css"/>
  <link href="${csRoot}base.css" rel="stylesheet" type="text/css"/>
</#macro>

<#function containsId list url>
    <#local flag = false />
    <#list list as item>
        <#if item.url == url>
            <#local flag = true />
        </#if>
    </#list>
    <#return flag>
</#function>

<#function isHomePage url>
    <#local flag = false />
    <#if url == "/index">
        <#local flag = true />
    </#if>
    <#return flag>
</#function>

<#-- 左侧菜单 -->
<#macro leftMenu menuObj=[] curMenuId=''>
<div class="g-sd" id="J-sidebar">
    <div class="head">
        <a href="/" class="logo"></a>
        <h1>开放API平台</h1>
        ${(userName)!''}
        <ul class="f-mt10 f-mb10">
            <li class="tag">中文</li>
        </ul>
        <#if userName?? && userName !=''>
            <a class="s-fc-white" href="/logout.html?url=http://www.wop.kaola.com">退出</a>
        <#else>
            <a class="s-fc-white" id="login" href="javascript:void(0)">登陆</a>
        </#if>
    </div>
    <#-- 输出一级菜单 -->
    <#list menuObj as menu>
        <div class="<#if containsId(menu.children![], curMenuId) || (menu_index == 0 && isHomePage(curMenuId))>active</#if>">
            <h3 class="nav-header">${menu.menuName }</h3>
            <ul class="nav-pills">
            <#-- 输出二级菜单 -->
                <#local subMenuList=menu.children/>
                <#list subMenuList as subMenu>
                    <li>
                        <a href="${subMenu.url}" class="link <#if curMenuId==subMenu.url>selected</#if>">${subMenu.menuName}</a>
                    </li>
                </#list>
            </ul>
        </div>
    </#list>
</div>
</#macro>

<#macro infoBar userName=''>
    <#if userName!=''><div class="u-message u-message-info">你好,${userName!''}</div></#if>
</#macro>