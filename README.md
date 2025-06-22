# 🏥 Hospital Management SQL Analysis Project

This project features a comprehensive SQL-based analysis of a hospital management database. The goal is to uncover meaningful insights about doctor performance, appointment trends, patient demographics, and operational efficiency to support strategic healthcare decisions.

---

## 🧠 Project Overview

This analysis answers key questions related to hospital operations:

- Which doctors handle the most appointments or generate the highest fees?
- Which medical specializations are in highest demand?
- What are the monthly and hourly appointment trends?
- How often do patients miss appointments?
- What is the average age of patients?
- Are there patterns between scheduling, patient behavior, or peak hours?


## 📂 Data Source

The dataset was prepared in a local SQL environment for demonstration and learning purposes.  
It includes sample tables representing core hospital entities:



## 🛠️ Tools & Technologies

 - DBeaver-SQL development and testing environment      
- SQL server-Used for all data analysis and insights       

---

## 🔎 Key Analyses Performed

### 🩺 Doctor Performance
- Top doctors by number of appointments handled
- Specializations with the most patient demand
- Doctors with the highest total consultation fees

### 📅 Appointment Trends
- Monthly trends of appointment volume
- Hourly trends to find peak appointment hours
- Canceled appointments used to calculate no-show rate

### 👥 Patient Insights
- Average patient age
- (Planned) Same-day vs scheduled appointment comparison

---

## 💡 Sample Queries

### 🔹 Top Performing Doctors

```sql
SELECT 
  CONCAT(d.first_name, ' ', d.last_name) AS doc_name, 
  COUNT(appointment_id) AS num_appointments
FROM doctors AS d
JOIN appointmentsss AS a ON d.doctor_id = a.doctor_id
GROUP BY doc_name
ORDER BY num_appointments DESC;

