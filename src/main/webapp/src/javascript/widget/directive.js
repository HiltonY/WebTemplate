/**
 * 表单字段生成组件
 * author yuqijun(yuqijun@corp.netease.com)
 */

NEJ.define([
	'base/util'
], function(_u, _p) {
	// common filter
	_p.xhref = function(elem, value) {

		var href = typeof value == 'object' ? this.$get(value) : value;
		if(window.from){
			elem.href =href+ ((href.indexOf("?")!=-1)?"&":"?") +"from="+window.from;
			elem.target="";
		}else{
			elem.href= href;
		}
	}
	return _p;
});
