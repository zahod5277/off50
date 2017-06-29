miniShop2.plugin.off50Properties = {
    getFields: function (config) {
        return {
            sex: {xtype: 'minishop2-combo-autocomplete', description: '<b>[[+sex]]</b><br />' + _('ms2_product_sex_help')},
            body_diameter: {xtype: 'minishop2-combo-autocomplete', description: '<b>[[+body_diameter]]</b><br />' + _('ms2_product_body_diameter_help')},
            body_material: {xtype: 'textfield', description: '<b>[[+body_material]]</b><br />' + _('ms2_product_body_material_help')},
            clockwork: {xtype: 'textfield', description: '<b>[[+clockwork]]</b><br />' + _('ms2_product_clockwork_help')},
            strap_type: {xtype: 'textfield', description: '<b>[[+strap_type]]</b><br />' + _('ms2_product_strap_type_help')},
            strap_color: {xtype: 'minishop2-combo-autocomplete', description: '<b>[[+strap_color]]</b><br />' + _('ms2_product_strap_color_help')},
            dial_color: {xtype: 'minishop2-combo-autocomplete', description: '<b>[[+dial_color]]</b><br />' + _('ms2_product_dial_color_help')},
            stat: {xtype: 'minishop2-combo-autocomplete', description: '<b>[[+stat]]</b><br />' + _('ms2_product_stat_help')}
        }
    }
    , getColumns: function () {
        return {
            sex: {width: 50, sortable: false, editor: {xtype: 'minishop2-combo-autocomplete', name: 'sex'}},
            body_diameter: {width: 50, sortable: false, editor: {xtype: 'minishop2-combo-autocomplete', name: 'body_diameter'}},
            body_material: {width: 50, sortable: false, editor: {xtype: 'textfield', name: 'body_material'}},
            clockwork: {width: 50, sortable: false, editor: {xtype: 'textfield', name: 'clockwork'}},
            strap_type: {width: 20, sortable: false, editor: {xtype: 'textfield', name: 'strap_type'}},
            strap_color: {width: 20, sortable: false, editor: {xtype: 'minishop2-combo-autocomplete', name: 'strap_color'}},
            dial_color: {width: 20, sortable: false, editor: {xtype: 'minishop2-combo-autocomplete', name: 'dial_color'}},
            stat: {width: 20, sortable: false, editor: {xtype: 'minishop2-combo-autocomplete', name: 'stat'}}
        }
    }
};