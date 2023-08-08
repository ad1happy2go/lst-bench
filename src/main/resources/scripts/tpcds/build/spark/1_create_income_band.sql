CREATE
    TABLE
        ${catalog}.${database}.income_band(
            ib_income_band_sk INT,
            ib_lower_bound INT,
            ib_upper_bound INT
        )
            USING ${table_format} OPTIONS(
            PATH '${data_path}income_band/'
        ) TBLPROPERTIES(
            'primaryKey' = 'ib_income_band_sk' ${table_props_suffix},
            'hoodie.metadata.enable' = 'true',
            'hoodie.metadata.index.column.stats.enable' = 'true',
            'hoodie.enable.data.skipping' = 'true'
        );
