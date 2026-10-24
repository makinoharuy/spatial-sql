import duckdb

con = duckdb.connect("flood.duckdb")

con.execute("INSTALL spatial")
con.execute("LOAD spatial")

print(con.sql("""SELECT spatial_version()"""))