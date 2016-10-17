/**
 * test详情页面，非list的Regular组件要继承BaseComponent
 */
define([
    'pro/widget/BaseComponent',
    'text!./index.html',
], function (BaseComponent, tpl) {
    var Detail = BaseComponent.extend({
        template: tpl
    });
    return Detail;
});