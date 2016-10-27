<#if (trackhistory?size<=4 )>

    <#list trackhistory as track>
    <div style="width:500px; height:400px;background:url(/img/map.jpg);background-size:100% 100%; ">

        <#list track.locationList as location>

            <div id="point" style="width:99%; height:99%;">
                <div style="width:10px;height: 10px; background-color:
                        <#if location.status =2>#c23321
                        <#else>#00c242
                        </#if>
                        ;position: relative;left: ${location.xPosition}px;top: ${location.yPosition}px;border-radius:5px;"></div>

            </div>
        </#list>

    </div>
    </#list>
</#if>
