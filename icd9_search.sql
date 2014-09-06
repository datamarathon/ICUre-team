--Find unique patients with Grand Mal Status or Petit Mal Status using ICD9
SELECT 	"CODE" AS "CODE",
		COUNT(DISTINCT "SUBJECT_ID") AS "TOTAL_PATIENTS"
FROM "MIMIC2V26"."icd9" "ic"
WHERE "ic"."CODE" in ('345.2','345.3')
GROUP BY "CODE"