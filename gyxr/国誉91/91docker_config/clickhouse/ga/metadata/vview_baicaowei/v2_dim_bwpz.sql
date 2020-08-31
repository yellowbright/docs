ATTACH VIEW v2_dim_bwpz
(
    `product_id` Nullable(String), 
    `bwpz_key` Nullable(String), 
    `bwpz` Nullable(String), 
    `bwpz_score` Nullable(String)
) AS
SELECT 
    product_id, 
    concat(product_id, '_', toString(toYYYYMMDD(stage_ed))) AS bwpz_key, 
    bwpz, 
    bwpz_score
FROM spl_baicaowei.opt_bwpz_result
