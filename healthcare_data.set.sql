SELECT Medical_Condition AS medical_condition,Admission_Type,
	COUNT(*) AS num_patients,
	AVG(Age) AS avg_age,
	AVG(Days_Addmitted) AS avg_days_admitted,
	SUM(CASE WHEN Test_Results != 'Inconclusive' THEN 1 ELSE 0 END) AS num_conclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Medical_Condition, Admission_Type
ORDER BY Medical_Condition;

SELECT Medical_Condition AS medical_condition,Admission_Type,
    SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) AS num_normal_tests,
	SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) AS num_abnormal_tests,
	SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) AS num_inconclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Medical_Condition, Admission_Type
ORDER BY Medical_Condition;

SELECT Admission_Type,
    SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) AS num_normal_tests,
	SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) AS num_abnormal_tests,
	SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) AS num_inconclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Admission_Type;

SELECT Medical_Condition AS medical_condition, Gender,
	COUNT(*) AS num_patients,
	AVG(Age) AS avg_age,
	AVG(Days_Addmitted) AS avg_days_admitted,
	SUM(CASE WHEN Test_Results != 'Inconclusive' THEN 1 ELSE 0 END) AS num_conclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Medical_Condition, Gender
ORDER BY Medical_Condition;

SELECT Medical_Condition AS medical_condition,Gender,
    SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) AS num_normal_tests,
	SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) AS num_abnormal_tests,
	SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) AS num_inconclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Medical_Condition, Gender
ORDER BY Medical_Condition;

SELECT  Gender,
    SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) AS num_normal_tests,
	SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) AS num_abnormal_tests,
	SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) AS num_inconclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Gender;

SELECT Medical_Condition AS medical_condition,Admission_Type, Gender,
	COUNT(*) AS num_patients,
	AVG(Age) AS avg_age,
	AVG(Days_Addmitted) AS avg_days_admitted,
	SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) AS num_normal_tests,
	SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) AS num_abnormal_tests,
	SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) AS num_inconclusive_tests,
	AVG(Billing_Amount) AS avg_billing_amount
FROM HEALTH.patients
GROUP BY Medical_Condition, Admission_Type, Gender
ORDER BY Medical_Condition;
