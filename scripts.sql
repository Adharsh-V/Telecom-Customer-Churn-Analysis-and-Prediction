create database end_to_endproject4;

select * from telecom_customer_churn;
select gender,count(gender) as total_count,round(count(gender)*100/(select count(*) from telecom_customer_churn),2) as percentage  
from telecom_customer_churn
group by gender
;

select contract,count(contract) as Number_of_Contract,round(Count(Contract)*100/(select count(*) from telecom_customer_churn),2) as percentage
from telecom_customer_churn
group by Contract;

select`Customer Status`,count(`Customer Status`) as count,round(count(`Customer Status`)*100/(select count(*) from telecom_customer_churn),2) as percentage
from telecom_customer_churn
group by `Customer Status`;


select city,count(city) as count,count(City)*100/(select count(*) from telecom_customer_churn) as percentage
from telecom_customer_churn
group by city
order by percentage  ;

-- Finding NULL values in each columns and removing nulls as per column values
show columns from telecom_customer_churn;
select column_name from
information_schema.columns
where table_name='telecom_customer_churn';

select
sum(case when`Customer ID` is null then 1 else 0 end) ,
sum(case when `Gender` is null then 1 else 0 end) ,
sum(case when`Age`is null then 1 else 0 end) ,
sum(case when `Married`is null then 1 else 0 end), 
sum(case when `Number of Dependents`is null then 1 else 0 end) ,
sum(case when`City`is null then 1 else 0 end) ,
sum(case when`Zip Code`is null then 1 else 0 end), 
sum(case when`Latitude`is null then 1 else 0 end) ,
sum(case when`Longitude`is null then 1 else 0 end) ,
sum(case when`Number of Referrals`is null then 1 else 0 end), 
sum(case when`Tenure in Months`is null then 1 else 0 end) ,
sum(case when`Offer`is null then 1 else 0 end) ,
sum(case when`Phone Service`is null then 1 else 0 end) ,
sum(case when`Avg Monthly Long Distance Charges`is null then 1 else 0 end), 
sum(case when`Multiple Lines`is null then 1 else 0 end) ,
sum(case when`Internet Service`is null then 1 else 0 end), 
sum(case when`Internet Type`is null then 1 else 0 end) ,
sum(case when`Avg Monthly GB Download`is null then 1 else 0 end), 
sum(case when`Online Security`is null then 1 else 0 end) ,
sum(case when`Online Backup`is null then 1 else 0 end) ,
sum(case when`Device Protection Plan`is null then 1 else 0 end) ,
sum(case when`Premium Tech Support`is null then 1 else 0 end) ,
sum(case when`Streaming TV`is null then 1 else 0 end) ,
sum(case when`Streaming Movies`is null then 1 else 0 end), 
sum(case when`Streaming Music`is null then 1 else 0 end) ,
sum(case when`Unlimited Data`is null then 1 else 0 end) ,
sum(case when`Contract`is null then 1 else 0 end) ,
sum(case when`Paperless Billing`is null then 1 else 0 end) ,
sum(case when`Payment Method`is null then 1 else 0 end) ,
sum(case when`Monthly Charge`is null then 1 else 0 end) ,
sum(case when `Total Charges`is null then 1 else 0 end) ,
sum(case when `Total Refunds`is null then 1 else 0 end) ,
sum(case when `Total Extra Data Charges`is null then 1 else 0 end), 
sum(case when `Total Long Distance Charges`is null then 1 else 0 end), 
sum(case when `Total Revenue`is null then 1 else 0 end) ,
sum(case when `Customer Status`is null then 1 else 0 end) ,
sum(case when `Churn Category`is null then 1 else 0 end) ,
sum(case when `Churn Reason`is null then 1 else 0 end) from telecom_customer_churn;

-- WE ARE GOING TO REMOVE THIS NULL VALUE AND INSERTING THAT DATA INTO A NEW TABLE(Production table)
 create table customer_prod
SELECT 
  IFNULL(`Customer ID`, 'NA') AS `Customer ID`,
  IFNULL(`Gender`, 'NA') AS `Gender`,
  IFNULL(`Age`, 'NA') AS `Age`,
  IFNULL(`Married`, 'NA') AS `Married`,
  IFNULL(`Number of Dependents`, 'NA') AS `Number of Dependents`,
  IFNULL(`City`, 'NA') AS `City`,
  IFNULL(`Zip Code`, 'NA') AS `Zip Code`,
  IFNULL(`Latitude`, 'NA') AS `Latitude`,
  IFNULL(`Longitude`, 'NA') AS `Longitude`,
  IFNULL(`Number of Referrals`, 'NA') AS `Number of Referrals`,
  IFNULL(`Tenure in Months`, 'NA') AS `Tenure in Months`,
  IFNULL(`Offer`, 'NA') AS `Offer`,
  IFNULL(`Phone Service`, 'NA') AS `Phone Service`,
  IFNULL(`Avg Monthly Long Distance Charges`, 'NA') AS `Avg Monthly Long Distance Charges`,
  IFNULL(`Multiple Lines`, 'NA') AS `Multiple Lines`,
  IFNULL(`Internet Service`, 'NA') AS `Internet Service`,
  IFNULL(`Internet Type`, 'NA') AS `Internet Type`,
  IFNULL(`Avg Monthly GB Download`, 'NA') AS `Avg Monthly GB Download`,
  IFNULL(`Online Security`, 'NA') AS `Online Security`,
  IFNULL(`Online Backup`, 'NA') AS `Online Backup`,
  IFNULL(`Device Protection Plan`, 'NA') AS `Device Protection Plan`,
  IFNULL(`Premium Tech Support`, 'NA') AS `Premium Tech Support`,
  IFNULL(`Streaming TV`, 'NA') AS `Streaming TV`,
  IFNULL(`Streaming Movies`, 'NA') AS `Streaming Movies`,
  IFNULL(`Streaming Music`, 'NA') AS `Streaming Music`,
  IFNULL(`Unlimited Data`, 'NA') AS `Unlimited Data`,
  IFNULL(`Contract`, 'NA') AS `Contract`,
  IFNULL(`Paperless Billing`, 'NA') AS `Paperless Billing`,
  IFNULL(`Payment Method`, 'NA') AS `Payment Method`,
  IFNULL(`Monthly Charge`, 'NA') AS `Monthly Charge`,
  IFNULL(`Total Charges`, 'NA') AS `Total Charges`,
  IFNULL(`Total Refunds`, 'NA') AS `Total Refunds`,
  IFNULL(`Total Extra Data Charges`, 'NA') AS `Total Extra Data Charges`,
  IFNULL(`Total Long Distance Charges`, 'NA') AS `Total Long Distance Charges`,
  IFNULL(`Total Revenue`, 'NA') AS `Total Revenue`,
  IFNULL(`Customer Status`, 'NA') AS `Customer Status`,
  IFNULL(`Churn Category`, 'NA') AS `Churn Category`,
  IFNULL(`Churn Reason`, 'NA') AS `Churn Reason`
FROM telecom_customer_churn;

select * from customer_prod;

select
sum(case when`Customer ID` is null then 1 else 0 end) ,
sum(case when `Gender` is null then 1 else 0 end) ,
sum(case when`Age`is null then 1 else 0 end) ,
sum(case when `Married`is null then 1 else 0 end), 
sum(case when `Number of Dependents`is null then 1 else 0 end) ,
sum(case when`City`is null then 1 else 0 end) ,
sum(case when`Zip Code`is null then 1 else 0 end), 
sum(case when`Latitude`is null then 1 else 0 end) ,
sum(case when`Longitude`is null then 1 else 0 end) ,
sum(case when`Number of Referrals`is null then 1 else 0 end), 
sum(case when`Tenure in Months`is null then 1 else 0 end) ,
sum(case when`Offer`is null then 1 else 0 end) ,
sum(case when`Phone Service`is null then 1 else 0 end) ,
sum(case when`Avg Monthly Long Distance Charges`is null then 1 else 0 end), 
sum(case when`Multiple Lines`is null then 1 else 0 end) ,
sum(case when`Internet Service`is null then 1 else 0 end), 
sum(case when`Internet Type`is null then 1 else 0 end) ,
sum(case when`Avg Monthly GB Download`is null then 1 else 0 end), 
sum(case when`Online Security`is null then 1 else 0 end) ,
sum(case when`Online Backup`is null then 1 else 0 end) ,
sum(case when`Device Protection Plan`is null then 1 else 0 end) ,
sum(case when`Premium Tech Support`is null then 1 else 0 end) ,
sum(case when`Streaming TV`is null then 1 else 0 end) ,
sum(case when`Streaming Movies`is null then 1 else 0 end), 
sum(case when`Streaming Music`is null then 1 else 0 end) ,
sum(case when`Unlimited Data`is null then 1 else 0 end) ,
sum(case when`Contract`is null then 1 else 0 end) ,
sum(case when`Paperless Billing`is null then 1 else 0 end) ,
sum(case when`Payment Method`is null then 1 else 0 end) ,
sum(case when`Monthly Charge`is null then 1 else 0 end) ,
sum(case when `Total Charges`is null then 1 else 0 end) ,
sum(case when `Total Refunds`is null then 1 else 0 end) ,
sum(case when `Total Extra Data Charges`is null then 1 else 0 end), 
sum(case when `Total Long Distance Charges`is null then 1 else 0 end), 
sum(case when `Total Revenue`is null then 1 else 0 end) ,
sum(case when `Customer Status`is null then 1 else 0 end) ,
sum(case when `Churn Category`is null then 1 else 0 end) ,
sum(case when `Churn Reason`is null then 1 else 0 end) from customer_prod;

create view vw_churnData as
select * from customer_prod where `Customer Status` in ('Churned','Stayed')
;
create view vw_joinedData as
select * from customer_prod where `Customer Status` ='Joined';

select * from vw_joinedData;