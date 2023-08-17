#Camilo Rhenals - Nazly Diaz

#Ingresos por sector año 2018 y la contribucion segun el grupo niif

Ingresosporsector = plot_ly(data = X1000_Empresas_mas_grandes_del_pa_s, x =~ MACROSECTOR, 
                            y =~ X1000_Empresas_mas_grandes_del_pa_s$`INGRESOS OPERACIONALES
                            2018*`,
                            color = ~ X1000_Empresas_mas_grandes_del_pa_s$`GRUPO EN NIIF`,type = "bar") %>% 
  layout(title = 'Ingresos por sector', xaxis = list(title = 'Macrosector'), yaxis = list(title = 'Ingresos 2018'))

Ingresosporsector

##recomendacion, usar auto scale en los siguientes graficos y verlo en una ventana completa

#Comparacion 2017-2018 por sector

grafico2 = plot_ly(data=X1000_Empresas_mas_grandes_del_pa_s, x=~X1000_Empresas_mas_grandes_del_pa_s$`INGRESOS OPERACIONALES
                   2018*`, y=~X1000_Empresas_mas_grandes_del_pa_s$`INGRESOS OPERACIONALES
                   2017*`, type="scatter", color=~X1000_Empresas_mas_grandes_del_pa_s$`RAZON SOCIAL`, frame=~X1000_Empresas_mas_grandes_del_pa_s$MACROSECTOR) %>%
  layout(title = 'Comparacion ingresos 2017-2018 por sector', xaxis = list(title = 'Ingresos operacionales 2018'), yaxis = list(title = 'Ingresos operacionales 2017'))

grafico2

#Comparacion 2017-2018 por departamento y ciudad

grafico3 = plot_ly(data=X1000_Empresas_mas_grandes_del_pa_s, x=~X1000_Empresas_mas_grandes_del_pa_s$`INGRESOS OPERACIONALES
                   2018*`, y=~X1000_Empresas_mas_grandes_del_pa_s$`INGRESOS OPERACIONALES
                   2017*`, type="scatter", color=~X1000_Empresas_mas_grandes_del_pa_s$`CIUDAD DOMICILIO`, frame=~X1000_Empresas_mas_grandes_del_pa_s$`DEPARTAMENTO DOMICILIO`)%>%
  layout(title = 'Comparacion ingresos 2017-2018 por departamento', xaxis = list(title = 'Ingresos operacionales 2018'), yaxis = list(title = 'Ingresos operacionales 2017'))

grafico3
