define([
    'pro/component/ListComponent',
    '../modal/index.js',
    'text!./index.html',
    'pro/component/notify/notify',
    'pro/component/pager/pager',
    'pro/component/datepicker/datepicker2'
], function (ListBase, Modal, tpl, notify,datepicker) {
    var List = ListBase.extend({
        url: '/test/list',
        template: tpl,
        config: function(data) {
            data.startTime = '';
            data.condition = {
          temtemNo: '',
          itemName: '',
          startTime: '',
          endTime: '',
          businessId: ''
        }
        },
        addAcount: function () {
            var modal = new Modal({});
            modal.$on('confirm', function (item) {
                item.status = 1;
                this.data.list.push(item);
                this.data.total++;
                this.$update();
            }._$bind(this))
        },
        onremove: function (item, index) {
            this.$request('/test/modifyStatus', {
                data: {accountId: item.account, status: 0},
                onload: function (_json) {
                    if (_json.code == 200) {
                        this.data.list.splice(index, 1);
                        notify.show('删除成功！')
                    } else {
                        notify.show('删除失败！' + _json.errMsg)
                    }
                }
            })
        },
        setMainAccount: function (item) {
            this.$request('/test/promoteAccount', {
                data: {accountId: item.account},
                onload: function (_json) {
                    if (_json.code == 200) {
                        item.type = 1;
                        this.$update();
                        notify.show('设置主帐号成功！')
                    } else {
                        notify.show('设置主帐号失败！' + _json.errMsg)
                    }
                }
            })
        },
        open: function (item) {
            this.$request('/test/open', {
                data: {id: item.id},
                onload: function (_json) {
                    if (_json.code == 200) {
                        item.active = true;
                        notify.show('启用帐号成功！')
                    } else {
                        notify.show('启用主帐号失败！')
                    }
                }
            })
        }
    })
    return List;
});