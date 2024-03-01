use swiggy;
select * from swiggy;
-- select distinct city, rating,row_number() over (order by rating desc) as popularfrom swiggywhere rating > 4.2
-- find the top one resturant in banglore
select distinct restaurant_name,city, rating,
rank() over (order by rating desc) as 'rank'
from swiggy
where city = 'bangalore' and rating > 4.5
limit 1;
-- How many restaurants have rating greater than 4.5
select count(distinct restaurant_name ) as number_of_Restaurant
from swiggy
where rating >4.5;
-- 3.	Which is the top one city with highest number of restaurant?

select count(distinct restaurant_name) as total_restaurant, city
from swiggy
group by city
order by total_restaurant desc
limit 1;

-- 4.	How many restaurants have word “pizza” in their name?

select distinct restaurant_name, rating,
rank () over (order by restaurant_name desc) as title_name
 from swiggy
 where restaurant_name like '%pizza%';
 
 
 -- 5.	What is the most common cuisine among the resturants in dataset?
 
select cuisine, count(*) as cuisine_title
from swiggy
group by cuisine
order by cuisine_title desc
limit 1;

-- 6.	What is the average rating of restaurant in each city

select distinct city, avg(rating) 
from swiggy
group by city
order by city desc;

-- 7.	What is the highest price of the item under ‘recommended’ menu 
-- category for each restaurants?

-- select * from swiggy
select distinct restaurant_name, menu_category, price
from swiggy
where menu_category = 'recommended'



 
 


