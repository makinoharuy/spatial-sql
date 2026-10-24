import duckdb

con = duckdb.connect("flood.duckdb")

con.execute("install spatial")
con.execute("load spatial")

