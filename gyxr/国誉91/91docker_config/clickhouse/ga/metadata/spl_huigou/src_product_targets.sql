ATTACH TABLE src_product_targets
(
    `id` Int64, 
    `target_to` Nullable(String), 
    `subject` Nullable(String), 
    `target_value` Nullable(Float32), 
    `period_type` Nullable(String), 
    `period_label` Nullable(String), 
    `start_date` Nullable(Date), 
    `end_date` Nullable(Date), 
    `src_id` Nullable(String), 
    `src_system` Nullable(String), 
    `created_at` Nullable(DateTime), 
    `updated_at` Nullable(DateTime)
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
