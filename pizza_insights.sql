
-- Create the Pizzas table
CREATE TABLE Pizzas (
    PizzaID INT PRIMARY KEY,
    PizzaName VARCHAR(100),
    Size VARCHAR(20),
    Price DECIMAL(5, 2)
);

-- Create the Ingredients table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(50)
);

-- Create the Pizza_Ingredients table to manage the many-to-many relationship
CREATE TABLE Pizza_Ingredients (
    PizzaID INT,
    IngredientID INT,
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID),
    PRIMARY KEY (PizzaID, IngredientID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(100),
    TotalAmount DECIMAL(10, 2)
);

-- Create the Order_Items table
CREATE TABLE Order_Items (
    OrderID INT,
    PizzaID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID),
    PRIMARY KEY (OrderID, PizzaID)
);


-- Insert sample pizzas (assuming a variety of sizes and prices)
INSERT INTO Pizzas (PizzaID, PizzaName, Size, Price) VALUES
(1, 'Margherita', 'Medium', 8.99),
(2, 'Pepperoni', 'Large', 10.99),
(3, 'Vegetarian', 'Small', 9.99),
(4, 'BBQ Chicken', 'Medium', 11.99),
(5, 'Hawaiian', 'Large', 12.99),
(6, 'Meat Lovers', 'Large', 13.99),
(7, 'Four Cheese', 'Medium', 10.49),
(8, 'Buffalo Chicken', 'Large', 12.49),
(9, 'Pesto Veggie', 'Small', 9.49),
(10, 'Seafood Delight', 'Medium', 14.99),
(11, 'Sausage and Peppers', 'Large', 11.99),
(12, 'Chicken Alfredo', 'Medium', 12.49),
(13, 'Greek', 'Small', 8.49),
(14, 'Pineapple & Ham', 'Large', 11.49),
(15, 'Spicy Italian', 'Medium', 10.99),
(16, 'Veggie Supreme', 'Small', 9.99),
(17, 'Classic Pepperoni', 'Large', 11.99),
(18, 'Tomato Basil', 'Medium', 8.99),
(19, 'Philly Cheese Steak', 'Large', 12.99),
(20, 'Spinach Artichoke', 'Small', 9.49),
(21, 'Meatball', 'Medium', 10.49),
(22, 'Buffalo Veggie', 'Large', 12.99),
(23, 'Margherita Deluxe', 'Medium', 10.99),
(24, 'Cajun Chicken', 'Large', 12.49),
(25, 'Bacon Cheeseburger', 'Medium', 11.99),
(26, 'Margarita Special', 'Small', 8.99),
(27, 'Chicken BBQ', 'Large', 13.49),
(28, 'Pesto Chicken', 'Medium', 11.99),
(29, 'Hawaiian Delight', 'Large', 12.49),
(30, 'Gourmet Veggie', 'Small', 9.99),
(31, 'Beef Stroganoff', 'Medium', 12.99),
(32, 'Shrimp Scampi', 'Large', 14.99),
(33, 'Pepperoni Feast', 'Medium', 11.99),
(34, 'Roasted Garlic', 'Large', 12.49),
(35, 'Spicy Hawaiian', 'Medium', 10.99),
(36, 'Classic Veggie', 'Small', 9.49),
(37, 'Chicken Teriyaki', 'Large', 13.49),
(38, 'Sicilian', 'Medium', 11.99),
(39, 'Tomato & Basil', 'Small', 8.99),
(40, 'Philly Special', 'Large', 12.99),
(41, 'Pepperoni Lovers', 'Medium', 10.99),
(42, 'Mushroom & Sausage', 'Large', 12.49),
(43, 'Cheese & Herb', 'Medium', 9.99),
(44, 'Spinach & Feta', 'Small', 9.49),
(45, 'Chicken Parmesan', 'Large', 13.99),
(46, 'Garlic & Onion', 'Medium', 10.49),
(47, 'Tandoori Chicken', 'Large', 12.99),
(48, 'Mediterranean', 'Medium', 11.49),
(49, 'Pepperoni & Mushroom', 'Small', 9.49),
(50, 'Bacon & Egg', 'Medium', 10.99);


-- Insert sample ingredients
INSERT INTO Ingredients (IngredientID, IngredientName) VALUES
(1, 'Tomato Sauce'),
(2, 'Cheese'),
(3, 'Pepperoni'),
(4, 'Bell Peppers'),
(5, 'Olives'),
(6, 'BBQ Sauce'),
(7, 'Chicken'),
(8, 'Pineapple'),
(9, 'Sausage'),
(10, 'Mushrooms'),
(11, 'Spinach'),
(12, 'Artichokes'),
(13, 'Garlic'),
(14, 'Onions'),
(15, 'Feta Cheese'),
(16, 'Shrimp'),
(17, 'Bacon'),
(18, 'Beef'),
(19, 'Herbs'),
(20, 'Buffalo Sauce');

-- Insert sample pizza-ingredient relationships
INSERT INTO Pizza_Ingredients (PizzaID, IngredientID) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 6),
(4, 7),
(5, 1),
(5, 2),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 9),
(7, 1),
(7, 2),
(7, 10),
(8, 1),
(8, 2),
(8, 7),
(9, 1),
(9, 2),
(9, 11),
(10, 1),
(10, 2),
(10, 16),
(11, 1),
(11, 2),
(11, 9),
(12, 1),
(12, 2),
(12, 7),
(13, 1),
(13, 2),
(13, 11),
(14, 1),
(14, 2),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 11),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 13),
(19, 1),
(19, 2),
(19, 18),
(20, 1),
(20, 2),
(20, 20);

-- Insert sample orders
INSERT INTO Orders (OrderID, OrderDate, CustomerName, TotalAmount) VALUES
(1001, '2024-09-08', 'John Doe', 18.98),
(1002, '2024-09-08', 'Jane Smith', 10.99),
(1003, '2024-09-09', 'Alice Johnson', 22.49),
(1004, '2024-09-09', 'Bob Brown', 25.99),
(1005, '2024-09-10', 'Charlie Davis', 14.99),
(1006, '2024-09-10', 'Diana Evans', 19.49),
(1007, '2024-09-11', 'Emily Fox', 17.99),
(1008, '2024-09-11', 'Frank Green', 13.49),
(1009, '2024-09-12', 'Grace Harris', 20.99),
(1010, '2024-09-12', 'Henry Ives', 11.99),
(1011, '2024-09-13', 'Ivy Jackson', 16.99),
(1012, '2024-09-13', 'Jack King', 18.49),
(1013, '2024-09-14', 'Karen Lee', 23.99),
(1014, '2024-09-14', 'Leo Miller', 12.99),
(1015, '2024-09-15', 'Mia Nelson', 14.49),
(1016, '2024-09-15', 'Nathan Owens', 21.49),
(1017, '2024-09-16', 'Olivia Parker', 19.99),
(1018, '2024-09-16', 'Paul Quinn', 15.49),
(1019, '2024-09-17', 'Quinn Roberts', 17.49),
(1020, '2024-09-17', 'Rachel Smith', 22.49);

-- Insert sample order items
INSERT INTO Order_Items (OrderID, PizzaID, Quantity) VALUES
(1001, 1, 2),
(1002, 2, 1),
(1003, 3, 2),
(1004, 4, 1),
(1005, 5, 1),
(1006, 6, 2),
(1007, 7, 2),
(1008, 8, 1),
(1009, 9, 3),
(1010, 10, 1),
(1011, 11, 2),
(1012, 12, 1),
(1013, 13, 2),
(1014, 14, 1),
(1015, 15, 1),
(1016, 16, 2),
(1017, 17, 1),
(1018, 18, 2),
(1019, 19, 2),
(1020, 20, 1);

select * from pizzas

select * from pizza_ingredients

select * from orders

select * from ingredients

select * from order_items

---Q1: Select all details of pizzas that have a price greater than 10.---
select * from pizzas where price >10

---Q2: Find all pizzas that are either large or medium size.---
select pizzaname from pizzaswhere size='Large' or size='Medium'

---Q3: Select all the customers who placed orders on '2024-09-09'.---
select customername from orders where orderdate='2024-09-09'

---Q4: Find all pizzas with names starting with 'M'.---
select pizzaname from pizzas where pizzaname like 'M%'

---Q5: Retrieve all orders where the total amount is between 15 and 25.---
select * from orders where totalamount between 15 and 25

---Q6: Find all orders where the customer name is 'John Doe' and the total amount is less than 20.---
select * from orders where customername = 'John Doe' and totalamount < 20

---Q7: Get a list of pizzas with a price greater than 10 but not equal to 12.49.---
select pizzaname from pizzas where price >10 and price != 12.49 

---Q8: Find the total number of pizzas sold (quantity) grouped by each pizza.---
select p.pizzaname, sum(oi.quantity) as "total number of pizzas sold" 
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid
group by p.pizzaname

---Q9: Get the total amount spent by each customer.---
select customername , sum(totalamount) as "total amount spent" from orders group by customername

---Q10: Find customers who have spent more than $20 across all their orders.---
select customername , sum(totalamount) as "total amount spent"
from orders 
group by customername
having sum(totalamount)>20

---Q11: Get a list of all pizza names and the ingredients associated with them.---
select p.pizzaname , i.ingredientname
from pizzas as p
join pizza_ingredients as pi
on p.pizzaid=pi.pizzaid
join ingredients as i
on i.ingredientid = pi.ingredientid

---Q12: Retrieve all orders along with the pizzas ordered and their quantities.---
select oi.orderid, oi.quantity, p.pizzaname 
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid

---Q13: Find the list of pizzas that have never been ordered.---
select oi.orderid, p.pizzaname 
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid
where oi.orderid is null

---Q14: Find the most expensive pizza ordered and its details.---
select * from pizzas
where price > (select max(price) from pizzas)

---Q15: List the customers who have ordered the pizza 'Margherita'.---
select customername from orders
where orderid in (select orderid from order_items
where pizzaid in (select pizzaid from pizzas where pizzaname = 'Margherita'))

---Q16: Get the details of orders whose total amount is greater than the average total amount of all orders.---
select * from orders
where totalamount>(select avg (totalamount) from orders)

---Q17: Get a running total, maximum, minimum, average and count of the amount spent by customers on each order, ordered by OrderID.---
select customername, totalamount,
sum(totalamount) over (partition by customername order by totalamount) as "running total of the amount spent by customers on each order",
max(totalamount) over (partition by customername order by totalamount) as "maximum of the amount spent by customers on each order",
min(totalamount) over (partition by customername order by totalamount) as "minimum of the amount spent by customers on each order",
round(avg(totalamount) over (partition by customername order by totalamount),0) as "average of the amount spent by customers on each order",
count(totalamount) over (partition by customername order by totalamount) as "count of the amount spent by customers on each order"
from orders

---Q18: List each pizza ordered along with the rank based on its price (highest to lowest).---
select p. pizzaname, oi.quantity,  
rank() over (partition by p.pizzaname order by oi.quantity ) as "Quantity Rank",
row_number() over (partition by p.pizzaname order by oi.quantity ) as "Quantity row number",
dense_rank() over (partition by p.pizzaname order by oi.quantity ) as "Quantity Dense Rank",
percent_rank() over (partition by p.pizzaname order by oi.quantity ) as "Quantity Percent Rank"
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid

---Q19: For each order, calculate the total amount for the order and the average total across all orders.---
select customername, totalamount,
round(avg(totalamount) over (partition by customername order by totalamount),0) as "average of the amount spent by customers on each order"
from orders

select * from order_items

---Q20: Use a CTE to find the total number of pizzas sold in each order and list the orders where more than 5 pizzas were ordered.---
with my_cte as (
select p.pizzaname, sum(oi.pizzaid) as "total number of pizzas"
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid
group by p.pizzaname
having sum(oi.pizzaid)>5
)

select * from my_cte

---Q21: Use a CTE to list the top 3 most ordered pizzas by total sum of quantity.---
select * from order_items


with my_cte as(
select p.pizzaname, sum(oi.quantity) as "total_sold"
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid
group by p.pizzaname
)
select pizzaname, total_sold
from my_cte
order by total_sold desc
limit 3

---Q22: Retrieve all pizzas where the price is between $10 and $12 and size is not ‘Small’.---
select pizzaname from pizzas where price between 10 and 12 and pizzasize !='Small'

---Q23: Retrieve all orders where the total amount is greater than 20 and less than 50.---
select * from orders
where totalamount > 20 and totalamount < 50

---Q24: Get the total sum of quantity sold and the total revenue generated, grouped by pizza size.---
select  sum(oi.quantity) as "Total number of pizzas sold", sum(p.price*oi.quantity) as "Total revenue generated", pizzasize as "Pizza Size"
from pizzas as p
join order_items as oi
on oi.pizzaid=p.pizzaid
group by pizzasize

---Q25: Retrieve all customers who ordered more than 10 pizzas in total(sum).
select * from orders
select * from order_items

select o.customername, sum(oi.pizzaid) as "more than 10 pizzas in total"
from order_items as oi
join orders as o
on o.orderid=oi.orderid
group by o.customername
having sum(oi.pizzaid)>10

---Q26: Find the total amount spent by each customer, and only display customers ---
---who spent more than the average total spent by all customers.---

select customername, totalamount
from orders
where totalamount > (select avg(totalamount) from orders)

---Q27: List all the pizzas ordered by customers who have spent more than $20 in total.---
select p.pizzaname , o.customername
from pizzas as p
join order_items as oi
on p.pizzaid=oi.pizzaid
join orders as o
on o.orderid=oi.orderid
where o.totalamount>20


---Q28: List all ingredients that are used in pizzas ordered by customers who placed the count of one order.---
select i.ingredientname, o.customername, count(o.orderid)
from ingredients as i
join pizza_ingredients as pi
on pi.ingredientid=i.ingredientid
join pizzas as p
on pi.pizzaid=p.pizzaid
join order_items as oi
on oi.pizzaid=p.pizzaid
join orders as o
on o.orderid=oi.orderid
group by i.ingredientname, o.customername
having count(o.orderid)=1
