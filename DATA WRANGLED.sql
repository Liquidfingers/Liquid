/*Convert columns of Customersand Products Tables to Primary Key*/
alter table sakila.Customers
add primary key(Customer_Key);

alter table sakila.Products
add primary key(Product_Key);

/* Identify and State Foreign Keys*/
ALTER TABLE sakila.Sales
ADD foreign key(Product_Key)
references sakila.Products(Product_Key)
on delete set null;

ALTER TABLE sakila.Sales
ADD foreign key(Customer_Key)
references sakila.Customers(Customer_Key)
on delete set null;

/*This was a Table that ws Created and dropped it led to a lot of duplication*/
select * from sakila.Customer_Sales_Report_Dated_Categorized;

/*Here's where All the Wrangling was done*/
create table sakila.first_summary
as
select sakila.Customers.Customer_Key,sakila.Sales.Product_Key,sakila.Customers.Name,sakila.Customers.Gender,sakila.Customers.Country,sakila.Customers.Continent,sakila.Sales.Order_Date,sakila.Sales.Quantity
from sakila.Customers
join sakila.sales
on sakila.Customers.Customer_Key = sakila.Sales.Customer_Key;

create table sakila.second_summary
as
select sakila.first_summary.Customer_Key,sakila.first_summary.Product_Key,sakila.Products.Category_Key,sakila.first_summary.Name,sakila.first_summary.Gender,sakila.first_summary.Country,sakila.first_summary.Continent,sakila.first_summary.Order_Date,sakila.Products.Product_Name,sakila.Products.Brand,sakila.Products.Category,sakila.Products.Unit_Cost_USD,sakila.Products.Unit_Price_USD,sakila.first_summary.Quantity
from sakila.first_summary
join sakila.Products
on sakila.Products.Product_Key = sakila.first_summary.Product_Key;
/*NB: THE DATA WAS CONVERTED TO CSV BEFORE WORKING ON THEM AND AFTER EXPORTING TO PC IT WAS CONVERTED BACK TO EXCEL WORKBOOK BEFORE
UPLOADED INTO PYTHON*/
/*OFF TO PYTHON*/
/*New info needed for the age of customers*/
create table sakila.Third_summary
as
select sakila.second_summary.Customer_Key,sakila.second_summary.Product_Key,sakila.second_summary.Category_Key,sakila.second_summary.Name,sakila.second_summary.Gender,sakila.second_summary.Country,sakila.second_summary.Continent,sakila.second_summary.Order_Date,sakila.second_summary.Product_Name,sakila.second_summary.Brand,sakila.second_summary.Category,sakila.second_summary.Unit_Cost_USD,sakila.second_summary.Unit_Price_USD,sakila.second_summary.Quantity,sakila.Customers.Birthday
from sakila.second_summary
join sakila.Customers
on sakila.Customers.Customer_Key=sakila.second_summary.Customer_Key;
select * from sakila.Third_Summary
group by Customer_key
