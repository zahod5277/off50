<?php

return array(
    'fields' => array(
        'sex' => NULL,
        'body_diameter' => NULL,
        'body_material' => NULL,
        'clockwork' => NULL,
        'strap_type' => NULL,
        'strap_color' => NULL,
        'dial_color' => NULL,
        'stat' => NULL
    )
    , 'fieldMeta' => array(
        'sex' => array(
            'dbtype' => 'varchar'
            , 'precision' => '125'
            , 'phptype' => 'string'
            , 'null' => true
            , 'default' => NULL
        ),
        'body_diameter' => array(
            'dbtype' => 'varchar'
            , 'precision' => '55'
            , 'phptype' => 'string'
            , 'null' => true
            , 'default' => '0'
        ),
        'body_material' => array(
            'dbtype' => 'varchar'
            , 'precision' => '55'
            , 'phptype' => 'string'
            , 'null' => true
            , 'default' => NULL
        ),
        'clockwork' => array(
            'dbtype' => 'varchar'
            , 'precision' => '55'
            , 'phptype' => 'string'
            , 'null' => true
            , 'default' => NULL
        ),
        'strap_type' => array(
            'dbtype' => 'varchar'
            , 'precision' => '55'
            , 'phptype' => 'string'
            , 'null' => true
            , 'default' => NULL
        ),
        'strap_color' => array(
            'dbtype' => 'varchar',
            'precision' => '55',
            'phptype' => 'string',
            'null' => true,
            'default' => NULL
        ),
        'dial_color' => array(
            'dbtype' => 'varchar',
            'precision' => '55',
            'phptype' => 'string',
            'null' => true,
            'default' => NULL
        ),
        'stat' => array(
            'dbtype' => 'varchar',
            'precision' => '55',
            'phptype' => 'string',
            'null' => true,
            'default' => NULL
        )
    )
    , 'indexes' => array(
        'sex' => array(
            'alias' => 'sex'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'body_diameter' => array(
            'alias' => 'body_diameter'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'body_material' => array(
            'alias' => 'body_material'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'clockwork' => array(
            'alias' => 'clockwork'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'strap_type' => array(
            'alias' => 'strap_type'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'strap_color' => array(
            'alias' => 'strap_color'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'dial_color' => array(
            'alias' => 'dial_color'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        ),
        'stat' => array(
            'alias' => 'stat'
            , 'primary' => false
            , 'unique' => false
            , 'type' => 'BTREE'
            , 'columns' => array(
                'action' => array(
                    'length' => ''
                    , 'collation' => 'A'
                    , 'null' => false
                )
            )
        )
    )
);
