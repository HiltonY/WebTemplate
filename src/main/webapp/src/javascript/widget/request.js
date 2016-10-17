/*
 * --------------------------------------------
 * 项目内工具函数集合，此页面尽量写注释
 * @version  1.0
 * @author   yuqijun(yuqijun@corp.netease.com)
 * --------------------------------------------
 */
define([
	'util/ajax/rest',
	'util/ajax/xdr',
	'base/util',
	'pro/base/util'
], function (rest, xdr, _ut,_) {

	var noop = function () {
	};
	//请求是否完成标识，防止用户连续多次发同一个请求
	var _isCompleteFlagObj = {};
	/**
	 * 平台request, 避免后续需要统一处理
	 * opt:  其他参数如 $request
	 *   - progress:  是否使用进度条提示(假)
	 *   - norest:  是否 不使用REST接口
	 */
	var request = function (url, opt) {
		var urlKey = _.getUrlPath(url);
		if(opt.canMultipleFlag || (opt.data && opt.data.canMultipleFlag) ){
			urlKey = urlKey+"?synchronousTime=" + new Date()+Math.random();
		}
		opt = opt || {};
		var olderror = typeof opt.onerror === "function" ? opt.onerror : noop,
			oldload = typeof opt.onload === "function" ? opt.onload : noop;

		opt.onload = function (json) {
			_isCompleteFlagObj[urlKey] = false;
			if (json) {
				oldload.apply(this, arguments);
			} else {
				olderror.apply(this, arguments);
			}
		}
		opt.onerror = function (json) {
			_isCompleteFlagObj[urlKey] = false;
			olderror.apply(this, arguments);
		}
		if ((opt.method && opt.method.toLowerCase() == 'get') || !opt.method) {
			if (!opt.data) {
				opt.data = {};
			}
			opt.data.t = +new Date();
		}
		if (!opt.data) {
			opt.data = {};
		}
		if(opt.data.canMultipleFlag){
			delete opt.data.canMultipleFlag;
		}
		//var newUrl = url.indexOf('?')>-1 ? (url+"&_async=true") : (url+"?_async=true");//后端判断异步请求标识
		opt.headers = opt.headers || {};
		opt.headers['X-Requested-With'] = 'XMLHttpRequest';
		opt.hasTimeoutFlag && setTimeout(function () {
			_isCompleteFlagObj[urlKey] = false;
		}, opt.timeoutTime || 10000);

		opt.type = 'json'; //现在基本上所有请求返回的都是json， 没有返回字符串的， 所以默认type：json
		if (!_isCompleteFlagObj[urlKey]) {
			_isCompleteFlagObj[urlKey] = true;
			if (opt.norest) {
				// 新版nej，内部会stringify一次， 如果这里再执行一次， 就会出错， 所以注释掉，老版本的nej需要；
				//if (opt.method && opt.method.toLowerCase() == 'post' && !_ut._$isString(opt.data)) {
				//	opt.data = _ut._$object2query(opt.data);
				//}
				xdr._$request(url, opt)
			} else {
				rest._$request(url, opt)
			}
		}

	}
	return request;
});