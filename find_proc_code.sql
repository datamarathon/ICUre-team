--Find procedure codes that mention EEG
SELECT *
FROM MIMIC2V26.d_codeditems co
WHERE LOWER(co.description) LIKE '%electro%';

--Coded as 'electroencephalogram' and not 'EEG'