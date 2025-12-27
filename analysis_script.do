summarize HALE EG Oil CO2 Urb Hep
reg HALE EG Oil CO2 Urb Hep
vif
gen LnEG = log (EG)
gen LnOil = log (Oil)
gen LnCO2 = log (CO2)
gen LnHep = log (Hep)
gen LnEG_LnOil = LnEG*LnOil
xtreg HALE LnEG LnOil LnCO2 Urb LnHep, fe
est store FE
xtreg HALE LnEG LnOil LnCO2 Urb LnHep, re
est store RE
hausman FE RE
xtreg HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep, fe
est store FE
xtreg HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep, re
est store RE
hausman FE RE, sigmamore  
xtserial HALE LnEG LnOil LnCO2 Urb LnHep
xtserial HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep
 xtreg HALE LnEG LnOil LnCO2 Urb LnHep, fe
  xttest3
   xtreg HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep, fe
 xttest3
 xtcd HALE
xtcd LnEG
xtcd LnOil
xtcd LnCO2
xtcd Urb
xtcd LnHep
pescadf HALE, lags(1) 
pescadf LnEG, lags(1) 
pescadf LnOil, lags(1) 
pescadf Urb, lags(1) 
pescadf LnCO2, lags(1) 
pescadf LnHep, lags(1) 
pescadf D.HALE, lags(1) 
pescadf D.LnEG, lags(1) 
pescadf D.LnOil, lags(1)
pescadf D.LnCO2, lags(1) 
pescadf D.Urb, lags(1)  
pescadf D.LnHep, lags(1) 
 xtpcse HALE LnEG LnOil LnCO2 Urb LnHep i.year, pairwise
 xtpcse HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep i.year, pairwise
 xtgls HALE LnEG LnOil LnCO2 Urb LnHep i.year, panels(heteroskedastic) corr(psar1)
 xtgls HALE LnEG LnOil LnEG_LnOil LnCO2 Urb LnHep i.year, panels(heteroskedastic) corr(psar1)