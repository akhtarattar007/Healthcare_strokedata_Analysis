/* Created Database*/
create database second_project_db;
use second_project_db;

/* Data is imported */
select * from stroke;

/* changing table name*/
alter table stroke rename stroketable;


/* Find the total number of patient that had suffered from heart stroke */
select sum(stroke) as total from stroketable;


/* Find the total number of patient that had suffered from heart disease */
select count(heart_disease) as "Total" from stroketable
where heart_disease = 1;


/* Find the total number of patient that had suffered from hypertension */
select sum(hypertension) from stroketable;


/* Find the total count of stroke by gender*/
select gender,count(stroke) as "total_stroke_count" 
from stroketable where stroke =1
group by gender;

/* Find the average  bmi by work type */
select work_type, round(avg(bmi),2) as "Average_BMI" 
from stroketable
group by work_type;

/* Count the patients that  has heart disease by smoking status*/
select smoking_status, count(heart_disease) as Total_pwhd 
from stroketable where heart_disease = 1
group by  smoking_status;

/* find the average glucole level for the people living in residence type*/
select residence_type, round(avg(avg_glucose_level),2) as "Avg_Glucose_Level"
from stroketable
group by residence_type;

/* Find the id which highest bmi */
select id from stroketable 
where bmi = (select max(bmi) from stroketable);

select * from stroketable;

/* Count the  patient  that smokes and are females */
select count(gender) from stroketable
where gender = "Female" AND smoking_status = "smokes";

/* Find the total number of male and female in our dataset*/
select gender,count(gender) as "Total_count" from stroketable
group by gender;

/* Count the hypertension patient according to gender*/
select gender, count(hypertension) from stroketable
where  hypertension  = 1
group by gender;

select * from stroketable;

/* Count the patient that suffered from heart disease by seperating them  by residence type and order by highest count */
select residence_type, sum(heart_disease) from stroketable
group by  residence_type
order by sum(heart_disease) desc;

/* count the  patient that suffered from stroke according to marital status*/
select * from stroketable;
select ever_married, sum(stroke)  from stroketable
group by ever_married;



