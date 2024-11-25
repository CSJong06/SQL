# E-Commerce Store Database

## Overview

This project uses MySQL to simulate an e-commerce store. The database captures key aspects of the shopping process, including customer information, product inventory, and order management.

The project provides:
- A schema to create and define the database structure.
- Sample data for testing and demonstration purposes.
- Examples of common queries to interact with the database, such as retrieving orders by customer or managing inventory.

---

## The Database

The database includes the following tables:
- **Customers**: Store customer information, including names, contact details, and registration dates.
- **Products**: Maintain a catalog of items with descriptions, prices, stock levels, and inventory dates.
- **Orders**: Track customer orders, including order status, total amounts, and dates.
- **Order Details**: Provide a breakdown of individual products within each order, including quantities and prices.

### Relationships
- Each order is associated with a specific customer.
- Order details link orders to products.

---

## **1. Install Required Tools**
### **a. Install SQL Server**
1. **Download and Install SQL Server**:
   - Go to the [SQL Server Downloads page]([https://www.microsoft.com/en-us/sql-server/sql-server-downloads](https://dev.mysql.com/downloads/installer/)).
   - Choose **SQL Server Community Edition** (free for development).
   - Run the installer and select **Full Installation**.
---
### **b. Install Node.js and npm**
1. **Download and Install Node.js**:
   - Go to the [Node.js Downloads page](https://nodejs.org/).
   - Install the **LTS version** (which includes npm).
2. **Verify Installation**:
   - Open a terminal or command prompt and run:
     ```bash
     node -v
     npm -v
     ```
     These commands should show the installed versions.
---
### **c. Install Git**
1. **Download and Install Git** from [Git's official page](https://git-scm.com/downloads).
2. Set up Git on your machine:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "youremail@example.com"
   ```
---
## **2. Clone the GitHub Repository**
1. **Clone the Repository**:
   - Open your terminal or command prompt.
   - Run the following command to clone the project repository to your local machine:
     ```bash
     git clone <repository_url>
     cd <repository_name>
     ```
---
## **3. Set Up the Application**
1. **Install Dependencies**:
   - In the project directory, run:
     ```bash
     npm install
     ```
2. **Configure the `.env` File**:
   - Create a `.env` file in the root of the project with the following variables:
     ```plaintext
        DB_HOST=localhost
        DB_PORT=3306
        DB_NAME=database_name
        DB_USER=root
        DB_PASSWORD=database_password
        PORT=3000
     ```
---
## **4. Run the Application**
1. **Start the Application**:
   - Run the application in development mode:
     ```bash
     npm run dev
     ```
2. **Test the App**:
   - Open your browser and go to `http://localhost:3000` to see the app in action.
---
## **5. Verify Everything Works**
1. **Verify SQL Server Database**:
   - In SSMS, run a query like:
     ```sql
     SELECT * FROM customers;
     ```
     to ensure your data is properly inserted.
2. **Verify Application**:
   - Ensure the app is running correctly and connecting to your SQL Server database by checking the app's logs.
---
With this setup, you now have the e-commerce application running with a local SQL Server database and the ability to manage everything via SSMS and the Node.js application.
