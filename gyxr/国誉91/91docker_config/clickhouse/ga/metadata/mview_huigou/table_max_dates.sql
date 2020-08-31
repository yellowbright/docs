ATTACH TABLE table_max_dates
(
    `table_name` String, 
    `max_date` Nullable(DateTime)
)
ENGINE = StripeLog
