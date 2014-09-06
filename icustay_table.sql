--Export ICUSTAY table for our Grand Mal patients
SELECT de.subject_id, 
	de.icustay_id,
	de.icustay_first_careunit,
	de.icustay_last_careunit,
	de.icustay_admit_age as age,
	de.gender,
	de.hospital_total_num,
	de.hospital_seq,
	de.icustay_total_num,
	de.icustay_los as icu_los_minutes,
	de.hospital_los as hosp_los_minutes,
	de.icustay_expire_flg as died_in_icu,
	de.hospital_expire_flg as died_in_hospital,
	ne.category as note_category,
	ne.text as note_text
FROM MIMIC2V26.icd9 ic
	JOIN MIMIC2V26.d_patients dp
		ON ic.subject_id = dp.subject_id
	JOIN MIMIC2V26.icustay_detail de
		ON ic.subject_id = de.subject_id
	JOIN MIMIC2V26.noteevents ne
		ON de.icustay_id = ne.icustay_id
WHERE ic.code in ('345.2','345.3')
ORDER BY de.icustay_id;