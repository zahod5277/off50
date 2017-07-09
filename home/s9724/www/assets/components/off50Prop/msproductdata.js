var storeitems = new Ext.data.ArrayStore({
    id: 'minishop2-product-sex'
    ,fields: ['value',{name: 'name', type: 'string'}]
    ,data: [['Мужской','Мужской'],['Женский','Женский'],['Унисекс','Унисекс']]
});
miniShop2.combo.ProductSex = function(config) {
    config = config || {};
    Ext.applyIf(config,{
        store: storeitems
        ,displayField: 'name'
        ,valueField: 'value'
        ,hiddenName: 'sex' //не забудьте поменять
        ,mode: 'local'
        ,triggerAction: 'all'
        ,editable: false
        ,selectOnFocus: false
        ,preventRender: true
        ,forceSelection: true
        ,enableKeyEvents: true
    });
    miniShop2.combo.ProductSex.superclass.constructor.call(this,config);
};
Ext.extend(miniShop2.combo.ProductSex,MODx.combo.ComboBox);
Ext.reg('minishop2-combo-product-sex',miniShop2.combo.ProductSex);
//plugin
miniShop2.plugin.off50Prop = {
    getFields: function () {
        return {
            body_diameter: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+body_diameter]]</b><br />' + _('ms2_product_body_diameter_help')
            },
            complect: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+complect]]</b><br />' + _('ms2_product_complect_help')
            },
            body_material: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+body_material]]</b><br />' + _('ms2_product_body_material_help')
            },
            clockwork: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+clockwork]]</b><br />' + _('ms2_product_clockwork_help')
            },
            sex: {
                xtype: 'minishop2-combo-product-sex',fieldLabel: 'Пол',
                description: '<b>[[+sex]]</b><br />' + _('ms2_product_sex_help')
            },
            strap_type: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+strap_type]]</b><br />' + _('ms2_product_strap_type_help')
            },
            strap_color: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+strap_color]]</b><br />' + _('ms2_product_strap_color_help')
            },
            dial_color: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+dial_color]]</b><br />' + _('ms2_product_dial_color_help')
            },
            stat: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+stat]]</b><br />' + _('ms2_product_stat_help')
            },
            forma: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+forma]]</b><br />' + _('ms2_product_forma_help')
            },
            complication: {
                xtype: 'minishop2-combo-options',
                description: '<b>[[+complication]]</b><br />' + _('ms2_product_complication_help')
            },
            functions: {
                xtype: 'minishop2-combo-options',
                description: '<b>[[+functions]]</b><br />' + _('ms2_product_functions_help')
            },
            water_resist: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+water_resist]]</b><br />' + _('ms2_product_water_resist_help')
            },
            glass: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+glass]]</b><br />' + _('ms2_product_glass_help')
            },
            calibr: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+calibr]]</b><br />' + _('ms2_product_calibr_help')
            },
            power_reserve: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+power_reserve]]</b><br />' + _('ms2_product_power_reserve_help')
            },
            limited: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+limited]]</b><br />' + _('ms2_product_limited_help')
            },
            year: {
                xtype: 'minishop2-combo-autocomplete',
                description: '<b>[[+year]]</b><br />' + _('ms2_product_year_help')
            }
        };
    },
    getColumns: function () {
        return {
            body_diameter: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'body_diameter'}
            },
            complect: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'complect'}
            },
            body_material: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'body_material'}
            },
            clockwork: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'clockwork'}
            },
            sex: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-product-sex', name: 'sex'}
            },
            strap_type: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'strap_type'}
            },
            strap_color: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'strap_color'}
            },
            dial_color: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'dial_color'}
            },
            stat: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'stat'}
            },
            forma: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'forma'}
            },
            complication: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-options', name: 'complication'}
            },
            functions: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-options', name: 'functions'}
            },
            water_resist: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'water_resist'}
            },
            glass: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'glass'}
            },
            calibr: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'calibr'}
            },
            power_reserve: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'power_reserve'}
            },
            limited: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'limited'}
            },
            year: {
                width: 50,
                sortable: false,
                editor: {xtype: 'minishop2-combo-autocomplete', name: 'year'}
            }
        };
    }
};