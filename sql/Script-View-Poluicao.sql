create or replace view `dataset_hospital.vPoluição` as
select
`DATE` as `Data`,
AQI as `Qualidade do Ar`,
`PM25 AVG` as `Média PM25`,
`PM10 AVG` as `Média PM10`,
`NO2 AVG` as `Média Dioxido de Nitrogenio`,
`NH3 AVG` as `Média Amônia`,
`SO2 AVG` as `Média Dióxido de Enxofre`,
`CO AVG` as `Média Monóxido de Carbono`,
`OZONE AVG` as `Média Ozônio`,
`PROMINENT POLLUTENT` as `Poluente Predominante`
from `dataset_hospital.Poluição`


select * from `dataset_hospital.vPoluição`