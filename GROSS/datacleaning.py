import pandas as pd

df = pd.read_csv("C:\\Users\\apues\\Downloads\\archive (26)\\my_file (1).csv")

#SO ETO NAG NULL AKO PARA MALAMAN KO ILAN YUNG MGA MISSING DATA,
#AND NAPAKARAMING MISSING DATA SA COLUMN NA PEAK KAYA NAMAN NAG REPLACE NALANG AKO NG ZERO PARA WALANG MISSING VALUES

#PEAK AND ALL TIME PEAK, KAYA NAMAN
df["All Time Peak"].isnull().sum()
df["Peak"].isnull().sum()

#GANTO GINAWA KO, NAG REPLACE NALANG AKO NG 0
df["Peak"].fillna(0, inplace=True)
df["All Time Peak"].fillna(0, inplace=True)

df.rename(columns={"Year(s)": "Year"}, inplace=True)

#I JUST CHANGED THE YEAR FORMAT SINCE THE ONE I GOT HAD A MESSY COLUMN NAME HGAHAHAHAHARHARHA EWAN
#BAKIT AKO NAG REREKLAMO EH KINUHA KO SA KAGGLE MESSY DATA TO, MALAMANG I DADATA CLEAN TALAGA XD
#PERO SHARE KO LANG NAMAN GUYS KUNG BAKIT MAY CODE NA GANYAN
df["Year"] = df["Year"].str.replace("â€“", "-", regex=False)
df["Year"] = df["Year"].str.extract(r"(\d{4})$")
df["Year"] = pd.to_numeric(df["Year"], errors="coerce")

df.rename(columns={"Actual\xa0gross": "Actual Gross"}, inplace=True)
df.rename(columns={"Adjusted\xa0gross (in 2022 dollars)": "Adjusted Gross(2022 DOLLARS)"}, inplace=True)


#DROP KO NAMAN YUNG COLUMN NA "REF" SINCE PARANG WALA NAMAN SYA HAHAHA, TAS MAY SILBE PALA NO TAS TINANGGAL KO PA
#WATDAHIL
df.drop("Ref.", axis=1, inplace=True)
print(df[["Actual Gross", "Adjusted Gross(2022 DOLLARS)"]].head(20))
print(df)

df.to_csv("C:\\Users\\apues\\Downloads\\cleaned_dataset.csv", index=False)

df["Peak"].fillna(0, inplace=True)
