import pandas as pd

df = pd.read_csv("C:\\Users\\apues\\Downloads\\archive (29).zip")

df['director'] = df['director'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Data")
df['cast'] = df['cast'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Data")
df['country'] = df['country'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Data")
df["date_added"] = df['date_added'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Date")
df["rating"] = df['rating'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Rating")
df['duration'] = df['duration'].replace(r'^\s*$', pd.NA, regex=True).fillna("No Duration")

df['duration'] = df['duration'].str.strip().str.lower()
df['duration'] = df['duration'].replace({
    r'\bmin\b': 'minutes',
    r'\bseason\b': 'season',
    r'\bseasons\b': 'seasons',
}, regex=True)

df.drop('description', axis=1, inplace=True)

print(df.isnull().sum())
print(df['duration'])


df.to_csv("C:\\Users\\apues\\Downloads\\netflix.cleaned.csv", index=False)
