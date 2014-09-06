SELECT DISTINCT ic.subject_id, ic.code, dp.hospital_expire_flg
FROM "MIMIC2V26"."icd9" ic 
	JOIN "MIMIC2V26"."d_patients" dp
ON ic."SUBJECT_ID" = dp."SUBJECT_ID"
WHERE ic."CODE" IN ('345.2','345.3')