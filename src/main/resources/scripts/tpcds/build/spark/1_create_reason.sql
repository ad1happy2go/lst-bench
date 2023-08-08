CREATE
    TABLE
        ${catalog}.${database}.reason(
            r_reason_sk INT,
            r_reason_id VARCHAR(16),
            r_reason_desc VARCHAR(100)
        )
            USING ${table_format} OPTIONS(
            PATH '${data_path}reason/'
        ) TBLPROPERTIES(
            'primaryKey' = 'r_reason_sk' ${table_props_suffix},
            'hoodie.metadata.enable' = 'true',
            'hoodie.metadata.index.column.stats.enable' = 'true',
            'hoodie.enable.data.skipping' = 'false'
        );
