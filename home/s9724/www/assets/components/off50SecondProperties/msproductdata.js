miniShop2.plugin.off50SecondProperties = {
    getFields: function (config) {
        return {
            forma: {xtype: 'textfield', description: '<b>[[+forma]]</b><br />' + _('ms2_product_forma_help')},
            complication: {xtype: 'textfield', description: '<b>[[+complication]]</b><br />' + _('ms2_product_complication_help')}
        }
    }
    , getColumns: function () {
        return {
            forma: {width: 20, sortable: true, editor: {xtype: 'textfield', name: 'forma'}},
            complication: {width: 20, sortable: true, editor: {xtype: 'textfield', name: 'complication'}}
        }
    }
};