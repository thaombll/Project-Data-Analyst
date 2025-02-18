select
EmployeeNumber as EmployeeID
,Age
,Attrition
,BusinessTravel
,DailyRate
,Department
,DistanceFromHome
,case
when education = 1 then "Below College"
when education = 2 then "College"
when education = 3 then "Bachelor"
when education = 4 then "Master"
when education = 5 then  "Doctor"
end "Education_Rating"
,EducationField
,EmployeeCount
,case 
when EnvironmentSatisfaction = 1 then "Low"
when EnvironmentSatisfaction = 2 then "Medium"
when EnvironmentSatisfaction = 3 then "High"
when EnvironmentSatisfaction = 4 then "Very High"
end "Environment_Satisfaction"
,Gender
,HourlyRate
,case 
when JobInvolvement =1 then 'Low'
when JobInvolvement =2 then 'Medium'
when JobInvolvement =3 then 'High'
when JobInvolvement =4 then 'Very High'
end "Job_Involvement"
, case when  JobLevel =1 then "Entry-level"
	 			when JobLevel =2 then "Intermediate or experienced (senior staff)"
	 			when JobLevel =3 then "First-level management"
	 			when JobLevel =4 then "Middle management"
	 			when JobLevel =5 then "Executive or senior management"
			end as JobLevel
,JobRole
, case
when JobSatisfaction = 1 then 'Low'
when JobSatisfaction = 2 then 'Medium'
when JobSatisfaction = 3 then 'High'
when JobSatisfaction = 4 then 'Very High'
end "Job_Satisfaction"
,MaritalStatus
,MonthlyIncome
,MonthlyRate
,NumCompaniesWorked
,Over18
,OverTime
,PercentSalaryHike
, case  when PerformanceRating = 1 then 'Low'
		 		when PerformanceRating = 2 then 'Good'
		 		when PerformanceRating = 3 then 'Excellent'
		 		else 'Outstanding'
		 	end as PerformanceRating
, case  when RelationshipSatisfaction = 1 then 'Low'
		 		when RelationshipSatisfaction = 2 then 'Medium'
		 		when RelationshipSatisfaction = 3 then 'High'
		 		else 'Very High'
		 	end as RelationshipSatisfaction
,StandardHours
,StockOptionLevel
,TotalWorkingYears
,TrainingTimesLastYear
, case when  WorkLifeBalance=1 then "Bad"
	 			when WorkLifeBalance=2 then "Good"
	 			when WorkLifeBalance=3 then "Better"
	 			when WorkLifeBalance=4 then "Best"
			end as WorkLifeBalance
,YearsAtCompany
,YearsInCurrentRole
,YearsSinceLastPromotion
,YearsWithCurrManager  	
from atrition.hr_employee_attrition h