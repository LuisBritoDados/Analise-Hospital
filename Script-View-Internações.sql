create or replace view `dataset_hospital.vInternações` as
select 
i.SNO,
i.`MRD No` as `Codigo da Internacao`,
i.DOA as `Data da Internacao`,
i.DOD as `Data da Alta`,
i.AGE as Idade,
i.GENDER as `Gênero`,
i.RURAL as `Região`,
i.`TYPE OF ADMISSION` as `Tipo de Internação`,
i.`DURATION OF STAY` as `Duração da Estadia`,
i.`duration of intensive unit stay` as `Duração da Estadia UTI`,
i.OUTCOME as `Saída`,
i.`SMOKING ` as Fumante,
i.ALCOHOL as `Álcoolatra`,
i.DM as `Diabético`,
i.HTN as Hipertenso,
SAFE_CAST(m.`DATE OF BROUGHT DEAD` as DATE) as `Data de Óbito`
from `dataset_hospital.Internações` as i
LEFT JOIN `dataset_hospital.Mortalidade` as m
ON i.SNO = m.SNO
