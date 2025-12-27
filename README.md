# Impact of Macroeconomic Variables on Health Adjusted Life Expectancy (HALE)

## 📌 Project Overview
This project investigates the determinants of Health Adjusted Life Expectancy (HALE) across various regions (2000–2021). It specifically examines the interaction between Economic Growth and Oil Consumption and their combined impact on public health outcomes.

## 📊 Dataset
The analysis utilizes a panel dataset containing:
- **HALE:** Health Adjusted Life Expectancy (Dependent Variable)
- **EG:** Economic Growth (GDP per capita)
- **Oil:** Oil Consumption/Volatility metrics
- **Control Variables:** CO2 Emissions, Urbanization (Urb), and Health Expenditure (Hep)

## 🛠 Methodology (Stata)
The research employs advanced panel econometrics:
1. **Diagnostic Tests:** VIF for Multicollinearity and Pesaran CD for Cross-sectional dependence.
2. **Model Selection:** Hausman Test to determine Fixed Effects (FE) vs. Random Effects (RE).
3. **Advanced Modeling:** Inclusion of interaction terms (`LnEG * LnOil`) to analyze nonlinear effects.
4. **Unit Root Testing:** Pesaran CADF tests for stationarity in panel data.

## 🚀 How to Use
1. Load the dataset: `import delimited using "data/Data_Used.csv"`
2. Run the Stata script: `do "scripts/analysis_script.do"`
