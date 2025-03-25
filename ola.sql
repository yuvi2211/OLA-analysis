create database ola;
use ola;


-- retreive all successfull booking
create view Successful_Bookings As
select *  from bookings 
where Booking_Status='Success';

select * from Successful_Bookings;

-- find the average ride distance for each vehicle type
Create view ride_distance_for_each_vehicle as
select vehicle_Type , Avg(Ride_Distance) as avg_dist from Bookings
group by vehicle_Type
order by avg_dist;

select * from ride_distance_for_each_vehicle;

-- Get the total number of cancelled ride by the customers

Create view Canceled_rides_by_customers As 
select count(*) from Bookings
where Booking_Status='Canceled by Customer';

Select * from Canceled_rides_by_customers;


-- List the top 5 customers who booked the highest numbers of rides

create view top_5_customers as 
select Customer_id,Count(Booking_ID) as ride_count from Bookings
group by Customer_id
order by ride_count desc 
limit 5;

Select * from top_5_customers;


-- Get the number of rides canceled by driver rides due to personal and car-related issues

select count(*) from bookings
where canceled_rides_by_driver='Personal & car related issue';

-- find the maximum and minimum driver ratings for prime sedan booking:



select max(Driver_ratings)as max_rate,min(Driver_ratings) as min_rate
from bookings
where vehicle_type='Prime sedan';


-- retrive all rides where payment was made by using upi

 
 
select * from bookings
where Payment_method='upi';

-- find the average customers rating per vehicle type


select vehicle_type,avg(Customer_rating) as avg_rate from bookings
group by vehicle_type
order by avg_rate;

-- calculate the total booking value of rides compeletd successfully


 
select sum(Booking_Value) as total_suuccesful
from bookings
where Booking_Status='Success';

-- list all inclompletes rides along with the reason
 
select booking_id,incomplete_rides_reason from bookings
where incomplete_rides='yes';



select *




