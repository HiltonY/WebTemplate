/*
 * 页面模块基类实现文件
 *
 * Auto build by NEI Builder
 */
NEJ.define([
    'base/klass',
    'util/event',
    'base/element',
    'base/event'
], function (k, t,_e,_v, p, pro) {
    /**
     * 页面模块基类，实现页面的通用逻辑
     *
     * @class   _$$Module
     * @extends util/event._$$EventTarget
     * @param  {Object} options - 模块输入参数
     */
    p._$$Module = k._$klass();
    pro = p._$$Module._$extend(t._$$EventTarget);
    /**
     * 模块初始化
     * @protected
     * @param  {Object} options - 输入参数信息
     * @return {Void}
     */
    pro.__init = function(options){
        this.__super(options);

        setTimeout(function() {
            this.__initLeft();
            this.__initFixedHeader();
        }._$bind(this), 500);
        // TODO something if necessary
    };
    /**
     * 模块重置逻辑
     * @protected
     * @param  {Object} options - 输入参数信息
     * @return {Void}
     */
    pro.__reset = function(options){
        this.__super(options);
        // TODO something if necessary
    };
    
    //初始化左侧菜单栏
    pro.__initLeft = function(){

        var LeftSidebar = document.querySelector('#J-sidebar');

        var navHeaders =_e._$getByClassName(LeftSidebar,"m-nav");
        for(var item in navHeaders){
            _v._$addEvent(navHeaders[item],"click",function(event){
                var currentElem = event.target;
                if(currentElem.parentNode.className.indexOf('active')<0){
                    for(var itm in navHeaders){
                        _e._$delClassName(navHeaders[itm],'active');
                    }
                    _e._$addClassName(currentElem.parentNode,'active');
                }else{
                    _e._$delClassName(currentElem.parentNode,'active');
                }

            });
        }
    };

    pro.__initFixedHeader = function() {
        var $header = document.querySelector('.m-header'),
            $body   = document.querySelector('.g-bd');

        if ( !$header || !$body ) { return; }

        _v._$addEvent($body, 'scroll', function() {
            var origOffsetY = $header.offsetTop;
            if (  $body.scrollTop > origOffsetY ) {
                $header.classList.add('f-pf');
            } else {
                $header.classList.remove('f-pf');
            }
        });
    }
    /**
     * 模块销毁逻辑
     * @protected
     * @return {Void}
     */
    pro.__destroy = function(){
        this.__super();
        // TODO something if necessary
    };
});