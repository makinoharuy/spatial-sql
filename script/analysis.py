import duckdb

con = duckdb.connect("flood.duckdb")
print("Berhasil connect ke database")

con.execute("INSTALL spatial;")
con.execute("LOAD spatial;")
print("Berhasil memuat spatial extension")

query = """
    select extension_name, loaded, installed, extension_version, from duckdb_extensions() where extension_name = 'spatial'
""" 

res = con.sql(query).fetchall()
print(res)

con.close()