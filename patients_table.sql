--Export PATIENTS table for our Grand Mal patients
SELECT DISTINCT ic.subject_id, ic.code, dp.hospital_expire_flg
FROM MIMIC2V26.icd9 ic
	JOIN MIMIC2V26.d_patients dp
ON ic.subject_id = dp.subject_id
WHERE ic.code in ('345.2','345.3')