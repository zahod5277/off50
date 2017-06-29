<?php

return array(
    'fields' => array(
        'forma' => NULL,
        'complication' => NULL
    )
    , 'fieldMeta' => array(
        'forma' => array(
            'dbtype' => 'varchar',
            'precision' => '55',
            'phptype' => 'string',
            'null' => true,
            'default' => NULL
        ),
        'complication' => array(
            'dbtype' => 'varchar',
            'precision' => '155',
            'phptype' => 'string',
            'null' => true,
            'default' => NULL
        )
    )
    , 'indexes' => array(
        'forma' => array(
            'alias' => 'forma'
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
        'complication' => array(
            'alias' => 'complication'
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
