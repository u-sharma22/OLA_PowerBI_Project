-- SQL Questions:
--  OLA Data Analyst Project
--  1. Retrieve all successful bookings:
select * from ola_bookings where Booking_Status='Success';

--  2. Find the average ride distance for each vehicle type:
select Vehicle_Type, avg(Ride_Distance) as Average_ride_distance from ola_bookings group by Vehicle_Type;

--  3. Get the total number of cancelled rides by customers:
select count(Booking_ID) from ola_bookings where Booking_Status = 'Canceled by Customer';

--  4. List the top 5 customers who booked the highest number of rides:
select Customer_ID, count(Customer_ID) as Total_rides from ola_bookings group by Customer_ID order by Total_rides desc limit 5;

--  5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) as 'Canceled by Driver' from ola_bookings where Canceled_Rides_by_Driver = 'Personal & Car related issue';

--  6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select Vehicle_Type, max(Driver_Ratings) as Max_Driver_Ratings, min(Driver_Ratings) as Min_Driver_Ratings from ola_bookings where Vehicle_Type = 'Prime Sedan';

--  7. Retrieve all rides where payment was made using UPI:
select * from ola_bookings where Payment_Method = 'UPI';


--  8. Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating) as Average_Customer_Rating from ola_bookings group by Vehicle_Type;

--  9. Calculate the total booking value of rides completed successfully:
select Booking_Status, count(Booking_Value) as Total_Booking_Value from ola_bookings where Booking_Status='Success';


--  10. List all incomplete rides along with the reason:

Select Incomplete_Rides_Reason, Incomplete_Rides  from ola_bookings where Incomplete_Rides='Yes';
