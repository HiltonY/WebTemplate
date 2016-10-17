/*
 * 页面入口模块实现文件
 *
 * Auto build by NEI Builder
 */
NEJ.define([
    'base/klass',
    'base/element',
    'pro/widget/module',
    'base/event',
    './components/detail/index.js'
],function(k,e,m,v,Detail,p,pro){
    /**
     * 页面模块实现类
     *
     * @class   _$$Module
     * @extends pro/widget/module._$$Module
     * @param  {Object} options - 模块输入参数
     */
    p._$$Module = k._$klass();
    pro = p._$$Module._$extend(m._$$Module);
    /**
     * 模块初始化
     * @private
     * @param  {Object} options - 输入参数信息
     * @return {Void}
     */
    pro.__init = function(options){
        this.__super(options);
        var detail = new Detail({data:{detailObj: window._data_.detailObj}});
        detail.$inject(e._$get('app'));
    };

});