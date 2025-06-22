use hosp;
-- Hospital Management System SQL Project 
-- (Doctor Performance & Specialization)
-- Which doctor has handled the most appointments?

select CONCAT(d.first_name, ' ',d.last_name) as doc_name,count(appointment_id) as num_appointments
from doctors as d
join appointmentsss as a
on d.doctor_id=a.doctor_id
group by doc_name 
order by num_appointments desc;

-- Which specialization attracts the highest number of appointments?
select d.specialization,count(appointment_id) as num_appointments
from doctors as d
join appointmentsss  as a
on d.doctor_id=a.doctor_id
group by d.specialization 
order by num_appointments desc;

-- Which doctor has the highest average consultation fee?
select CONCAT(first_name, ' ',last_name) as doc_name, sum(consultation_fee) as consulation_fee
from doctors
group by doc_name 
order by consulation_fee desc

-- (Appointment Analysis)
-- What is the monthly trend of appointmentments
select * from appointmentsss ;

select month(appointment_date )as month,count(appointment_id ) as num_appointments
from appointmentsss 
group by month;

-- What is the appointment no-show rate (i.e., how many appointments were not attended)?
select COUNT(appointment_id) as no_show_rate
from appointmentsss
where status='canceled';

-- Find the peak appointment hours (i.e., what time slot has the most appointments?)

select * from appointmentsss;
SELECT 
    HOUR(appointment_date) AS appointment_hour,
    COUNT(*) AS num_appointments
FROM appointmentsss 
GROUP BY 
    appointment_hour
ORDER BY 
    num_appointments DESC;


-- (Patient Insights)
-- What is the average age of patients?
select * from patients p 
-- Simple version (may overcount if birthday hasn't happened this year)
SELECT AVG(DATEDIFF(YEAR, date_of_birth, GETDATE())) AS average_age
FROM patients;

-- What percentage of patients book appointments on the same day compared to those who scheduled ahead?
-- (Treatment & Medication Trends)
-- What are the top 5 most common diagnoses given to patients?
-- Find the most prescribed medications
-- How many treatments were provided per doctor in the past 3 months?
-- What is the average number of treatments per patient?
-- Is there any relationship between diagnosis and medication prescribed?
-- Which doctors prescribe the most medications?
