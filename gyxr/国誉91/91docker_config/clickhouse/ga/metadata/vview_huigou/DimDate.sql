ATTACH VIEW DimDate
(
    `id` Int64, 
    `fulldate` Nullable(Date), 
    `datekey` Nullable(Int64), 
    `datenameen` Nullable(String), 
    `datenamecn` Nullable(String), 
    `weekkey` Nullable(Int64), 
    `weeknameen` Nullable(String), 
    `weeknameenshort` Nullable(String), 
    `weeknamecn` Nullable(String), 
    `weeknamecnshort` Nullable(String), 
    `weekofyear` Nullable(Int64), 
    `weekdaynameen` Nullable(String), 
    `weekdaynameenshort` Nullable(String), 
    `weekdaynamecn` Nullable(String), 
    `weekdaynamecnshort` Nullable(String), 
    `monthkey` Nullable(Int64), 
    `monthofyear` Nullable(Int64), 
    `monthnameen` Nullable(String), 
    `monthnameenshort` Nullable(String), 
    `monthnamecn` Nullable(String), 
    `monthnamecnshort` Nullable(String), 
    `quarterkey` Nullable(Int64), 
    `quarterofyear` Nullable(Int64), 
    `quarternameen` Nullable(String), 
    `quarternameenshort` Nullable(String), 
    `quarternamecn` Nullable(String), 
    `quarternamecnshort` Nullable(String), 
    `yearkey` Nullable(Int64), 
    `yearnameen` Nullable(String), 
    `yearnamecn` Nullable(String), 
    `dayofweek` Nullable(Int64), 
    `dayofmonth` Nullable(Int64), 
    `dayofquarter` Nullable(Int64), 
    `dayofyear` Nullable(Int64), 
    `weekstartdate` Nullable(Date), 
    `weekenddate` Nullable(Date), 
    `weekofmonthnamecn` Nullable(String), 
    `weekofmonth` Nullable(Int64)
) AS
SELECT *
FROM db_public.DimDate
