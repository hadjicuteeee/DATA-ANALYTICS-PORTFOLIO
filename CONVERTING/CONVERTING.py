import sqlite3



conn = sqlite3.connect(":memory:")
cur = conn.cursor()

cur.execute("DROP TABLE IF EXISTS string_numbers")

cur.execute("""
CREATE TABLE string_numbers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    num_text TEXT,
    name TEXT)
""")


data = [
    ('10', 'olivia'),
    ('25', 'rodrigo'),
    ('7', 'maliken'),
    ('100', 'amunra'),
    ('50', 'jain')
]


cur.executemany(
    "INSERT INTO string_numbers (num_text, name) VALUES (?, ?)",
    data
)

conn.commit()

print("CAST to INTEGER:")
for row in cur.execute("""
    SELECT num_text, CAST(num_text AS INTEGER)
    FROM string_numbers
"""):
    print(row)

print("\nShortcut to INTEGER:")
for row in cur.execute("""
    SELECT num_text, num_text + 0
    FROM string_numbers
"""):
    print(row)

print("\nCAST to NUMERIC:")
for row in cur.execute("""
    SELECT num_text, CAST(num_text AS NUMERIC) AS decimal
    FROM string_numbers
"""):
    print(row)

conn.close()
