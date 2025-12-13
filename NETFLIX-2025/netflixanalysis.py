import pandas as pd

df = pd.read_csv("C:\\Users\\apues\\Downloads\\netflix.cleaned.csv")

print("Count per type")
aura = (df['type'].value_counts(normalize=True) * 100).round(2)
print(aura)

print("Top Producing Countries")
print(df.groupby('country').size().sort_values(ascending=False).head(10), "\n")

print("Countries that has no DATA")
print((df['country'] == "No Data").sum(), "\n")

print("Trend per Release Year")
print(df['release_year'].value_counts().sort_index(ascending=False), "\n")

print("Top 5 Popular Director")
print(df[df['director'] != "No Data"]['director'].value_counts().head(5), "\n")

print("Top Genre")
split = df['listed_in'].str.split(',').explode().str.strip()
split.name = "Genre"
print(split.value_counts().head(10), "\n")

print("Movies from USA")
print(df[df['country'] == "United States"].shape[0])
print(df[df['country'] == 'United States'].value_counts())

print("Columns that has no data")
print((df == 'No Data').sum().sort_values(ascending=False))
