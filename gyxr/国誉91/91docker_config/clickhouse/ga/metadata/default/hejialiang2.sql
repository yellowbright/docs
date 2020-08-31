ATTACH TABLE hejialiang2
(
    `id` Int16, 
    `name` String COMMENT '姓名', 
    `birthday` Nullable(Date) DEFAULT CAST('1999-01-01', 'Nullable(Date)') COMMENT '生日'
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
