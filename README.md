# Sql_Assignment__1
MySQL schema for an e-commerce Orders table with order status, payment tracking, delivery details, constraints and foreign key to Customer table

## Features
- Auto-increment primary key (`Order_id`)
- Foreign key to `customer` table with ON DELETE / ON UPDATE CASCADE
- ENUM columns for order status, payment method, payment status and delivery status
- CHECK constraint to make sure `Quantity > 0`
- UNIQUE `Tracking_Number` for every shipment
- Default values for order date, discount, statuses and created timestamp

## Files
- `orders.sql` - CREATE TABLE script for the orders table

## How to Run
1. Create the `customer` table first, because `orders` references `customer(Customer_id)`
2. Run `orders.sql` in MySQL

## Requirements
MySQL 8.0.16+ (needed for `DEFAULT (CURRENT_DATE)` and CHECK constraints)
