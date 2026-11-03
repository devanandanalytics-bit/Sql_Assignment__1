DROP DATABASE IF EXISTS Shopping_Management;
create database Shopping_Management;

use Shopping_Management;


-- Parent Table --  
create Table customer(

   Customer_id INT PRIMARY KEY AUTO_INCREMENT,
   Customer_Nmae VARCHAR(100),
   Email VARCHAR(50) UNIQUE NOT NULL,
   Phone_Number CHAR(10) UNIQUE ,
   Age TINYINT UNSIGNED CHECK(Age > 0),
   Gender ENUM('Male','Femail','Other'),
   Country VARCHAR(50) DEFAULT 'INDIA',
   City VARCHAR(50),
   Pincode CHAR(6) DEFAULT '201301',
   Registration_Date DATE DEFAULT(CURRENT_DATE),
   Registration_Time TIME DEFAUlT (CURRENT_TIME),
   Created_At DATETIME DEFAULT (CURRENT_TIMESTAMP),
   Address VARCHAR(250),
   Customer_Status ENUM('Active','Inactive','Blocked') DEFAULT 'Active',
   Customer_Notes VARCHAR(1000)
   
   );
   
   -- Child Table --  
   
CREATE TABLE orders (
    Order_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_id INT NOT NULL,
    Order_Date DATE DEFAULT (CURRENT_DATE),
    Order_Amount DECIMAL(10,2) NOT NULL,
    Order_Status ENUM('Pending','Processing','Shipped','Delivered','Cancelled') DEFAULT 'Pending',
    Payment_Method ENUM('Cash','Card','UPI','Net Banking'),
    Payment_Status ENUM('Pending','Paid','Failed') DEFAULT 'Pending',
    Shipping_Address VARCHAR(250),
    Delivery_Pincode CHAR(6),
    Quantity INT CHECK (Quantity > 0),
    Discount_Amount DECIMAL(10,2) DEFAULT 0.00,
    Delivery_Date DATETIME NULL,
    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    Tracking_Number VARCHAR(30) UNIQUE,
    Delivery_Status ENUM('Not Dispatched','In Transit','Delivered','Returned') DEFAULT 'Not Dispatched',
    Order_Notes VARCHAR(1000),
    FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
     
	
   
   
   
   
   