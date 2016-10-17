/**
 * 前台分类管理页 - 三级分类下添加编辑绑定关系modal
 * author luzhongfang@corp.netease.com
 */

define([
  'pro/component/modal/modal',
  'pro/component/notify/notify',
  'base/util',
  'text!./index.html'
], function(Modal,notify, _u, tpl, p,o,f,r){

    var AccountModal = Modal.extend({
        content:tpl,

        init: function () {
            this.__getSelectData();
            this.supr();
        },

        __getSelectData: function () {
            this.$request('/test/storageConfigList', {
                progress: true,
                method: 'get',
                onload: function (json) {
                    if (json.code == 200) {
                        this.data.customesTypeList = this.formatSelectList(json.list || [],'warehouseId', 'warehouseName') ;
                        this.$update();
                    } else {
                        Notify.error(json.message || '获取列表失败');
                    }
                }._$bind(this),
                onerror: function (json) {
                    notify.error('请求错误');
                }
            });
        },

        /**
         * 把传入的下拉列表转成标准的下拉列表形式
         * @param list 需要转换的list
         * @param id id去的字段
         * @param name name所取得字段
         * @returns {Array} 返回格式化的list {id:1, name: 'text'}
         */
        formatSelectList: function(list, id, name) {
            var tempList = [];
            _u._$forEach(list, function(item) {
               tempList.push({id: item[id], name: item[name]});
            });
            return tempList;
        },

        confirm: function(){
            var url = '/test/addAccount';
            var self = this;
            var param= {
                accountId:this.data.account,
                storageId:this.data.storageId
            }
            if(this.data.id){
                param.accountId = this.data.accountId;
            }
            var option = {
                method:'post',
                data:param,
                type:'json',
                norest:true,
                onload:function(json){
                    if(json && json.code == 200){
                        notify.notify({
                            type: 'success',
                            message: json.message || '操作成功！'
                        }); 
                          self.$emit('confirm', json.obj);
                    }else{ 
                        notify.showError(json.message || '操作失败！');
                    } 
                      self.locked = false;
                      this.destroy();
                },
                onerror:function(err){
                    notify.showError(err || '请求出错，请稍后再试！');
                      self.locked = false;
                }
            };
              this.$request(url,option);
              this.locked = true;
        }
    });


   
    // 绑定Modal
      return AccountModal;
})