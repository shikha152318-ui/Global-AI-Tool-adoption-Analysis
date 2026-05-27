----Creating Database--------

Create database ai_tool_adoption

use ai_tool_adoption

select * from ai_adoption

update ai_adoption
set adoption_rate=round(adoption_rate ,2)

select * from ai_adoption

select count(*) as total_number_of_records from ai_adoption

----EDA---------

---Overall Adoption Rate(%)------

select round(avg(adoption_rate),2) as overall_adoption_rate
from ai_adoption


-----Global Daily Active Users (DAU)

select country,sum(daily_active_users) as DAU 
from ai_adoption
group by country
    
----Industry Adoption Rate (%): 

select industry , round(avg(adoption_rate),2) as Industry_adoption_rate
from ai_adoption
group by industry


---Top Industies By Adoption---

SELECT TOP(5)
    industry,
    ROUND(AVG(adoption_rate), 2) AS avg_adoption_rate
FROM ai_adoption
GROUP BY industry
ORDER BY avg_adoption_rate DESC

---Comapny size adoption split------


SELECT 
    company_size,
    ROUND(AVG(adoption_rate), 2) AS avg_adoption_rate
FROM ai_adoption
GROUP BY company_size
ORDER BY avg_adoption_rate DESC;


----Age Group Adoption Rate:

select age_group, round(avg(adoption_rate),2) as avg_adoption_rate
from ai_adoption
group by age_group
order by age_group

---Total daily active user by ai_tool
select ai_tool,sum(daily_active_users) as total_DAU
from ai_adoption
group by ai_tool

---Average daily active user by ai_tool
select ai_tool,avg(daily_active_users) as avg_DAU
from ai_adoption
group by ai_tool


