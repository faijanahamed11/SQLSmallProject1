# GetCustomerSummary – SQL Stored Procedure

This project is a small SQL Server practice task where I created a stored procedure to analyze customer and sales data country-wise.  
The main goal of this procedure is to clean data, calculate summaries, and display meaningful results in a simple way.

---

## What this project does

The stored procedure takes a country name as input and generates a summary for that country.

It does the following:

- Checks whether any customers from the selected country have missing (NULL) scores  
- If NULL scores are found, they are updated to 0 so calculations remain correct  
- Counts the total number of customers from that country  
- Calculates the average customer score  
- Finds the total number of orders placed  
- Calculates the total sales amount  

The results are shown using printed messages and a final result set.

---

## Why this procedure is useful

- Ensures clean data before running calculations  
- Avoids incorrect averages due to NULL values  
- Gives a quick country-level business overview  
- Demonstrates how control flow works in SQL Server  

---

## SQL concepts used

- Stored Procedures  
- Variables and assignments  
- Conditional logic using IF–ELSE  
- Data cleaning techniques  
- Aggregate functions (COUNT, AVG, SUM)  
- Table joins  
- PRINT statements for readable output  

---

## Tables involved

### Sales.Customers
Contains basic customer information such as:
- Customer ID  
- Country  
- Score  

### Sales.Orders
Contains order and sales details:
- Order ID  
- Customer ID  
- Sales amount  

---

## How to use

- Run the stored procedure by passing a country name  
- If no country is provided, it uses **USA** by default  
- After execution:
  - Summary messages appear in the **Messages** section  
  - Order and sales details appear in the **Results** section  

---

## Use cases

- SQL practice for beginners  
- Exam and interview preparation  
- Learning control flow in stored procedures  
- Understanding real-world reporting logic  

---

## Notes

This project is created purely for learning and practice purposes.  
It focuses on clarity, logic, and clean data handling rather than advanced optimization.

---

## License

Created by **Faijan Ahamed**  
For learning and practice purposes.
