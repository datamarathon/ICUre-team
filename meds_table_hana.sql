--CREATE TABLE "USER1"."anything" AS (
SELECT ic."SUBJECT_ID",
ic."HADM_ID",
ic."SEQUENCE",
ic."CODE",
ic."DESCRIPTION",
ic."ICUSTAY_ID",
me."ITEMID",
me."CHARTTIME",
me."VOLUME",
me."DOSE",
me."DOSEUOM",
me."SOLVOLUME",
me."SOLUNITS",
me."ROUTE",
me."STOPPED",
me."DOSE",
mi."LABEL",
ne."TEXT",
ne."PATIENT_INFO"

 FROM "MIMIC2V26"."icd9" ic
	JOIN "MIMIC2V26"."medevents" me
		ON ic."SUBJECT_ID" = me."SUBJECT_ID"
	JOIN "MIMIC2V26"."d_meditems" mi
		ON me."ITEMID" = mi."ITEMID"
	JOIN "MIMIC2V26"."noteevents" ne
		ON ic."SUBJECT_ID" = ne."SUBJECT_ID"
	WHERE (
	ic."CODE" IN ('345.2','345.3')
	AND
	ne."CATEGORY" LIKE '%DISCHARGE_SUMMARY%'
	)
	AND
	(
	ic."SUBJECT_ID"= 31
	)
--)