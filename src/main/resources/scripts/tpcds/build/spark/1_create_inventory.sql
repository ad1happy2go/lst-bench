CREATE
    TABLE
        ${catalog}.${database}.inventory(
            inv_date_sk INT,
            inv_item_sk INT,
            inv_warehouse_sk INT,
            inv_quantity_on_hand INT
        )
            USING ${table_format} OPTIONS(
            PATH '${data_path}inventory/'
        ) PARTITIONED BY(inv_date_sk) TBLPROPERTIES(
            'primaryKey' = 'inv_date_sk,inv_item_sk,inv_warehouse_sk' ${table_props_suffix},
            'hoodie.metadata.enable' = 'true',
            'hoodie.metadata.index.column.stats.enable' = 'true',
            'hoodie.enable.data.skipping' = 'true'
        );
