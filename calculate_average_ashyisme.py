#!/usr/bin/env python3
import polars as pl

df = pl.scan_csv("measurements.txt", has_header=False, separator=";")

# print(df.collect())

df_agg = (
    df.group_by("column_1")
    .agg(
        [
            pl.col("column_2").min().alias("min"),
            pl.col("column_2").mean().alias("mean"),
            pl.col("column_2").max().alias("max"),
        ]
    )
    .collect()
    .sort("column_1")
)

print(f"{{{df_agg.write_csv(separator='/', line_terminator=', ')[:-2]}}}")
