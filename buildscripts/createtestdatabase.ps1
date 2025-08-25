#!/usr/bin/env pwsh
# Script to create a test SQLite database for smoketesting
# This script creates a standardized test database with sample data

param(
    [Parameter(Mandatory=$false)]
    [string]$DatabasePath = "smoketest.db"
)

Write-Host "Creating test database: $DatabasePath"

# Create a sqlite database with multiple tables and sample data
$sqlCommands = @"
CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO test (name) VALUES ('Alice'), ('Bob'), ('Charlie');

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price DECIMAL(10,2),
    category TEXT,
    in_stock BOOLEAN DEFAULT 1
);
INSERT INTO products (name, price, category, in_stock) VALUES 
    ('Laptop', 999.99, 'Electronics', 1),
    ('Mouse', 29.95, 'Electronics', 1),
    ('Desk Chair', 199.50, 'Furniture', 0),
    ('Notebook', 5.99, 'Office Supplies', 1);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    order_date TEXT DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    status TEXT CHECK(status IN ('pending', 'shipped', 'delivered', 'cancelled'))
);
INSERT INTO orders (customer_name, total_amount, status) VALUES 
    ('John Doe', 1029.94, 'delivered'),
    ('Jane Smith', 199.50, 'shipped'),
    ('Bob Johnson', 35.94, 'pending');

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    hire_date TEXT,
    salary INTEGER,
    department_id INTEGER
);
INSERT INTO employees (emp_id, first_name, last_name, email, hire_date, salary, department_id) VALUES 
    (1001, 'Sarah', 'Wilson', 'sarah.wilson@company.com', '2023-01-15', 75000, 1),
    (1002, 'Mike', 'Davis', 'mike.davis@company.com', '2023-03-20', 68000, 2),
    (1003, 'Lisa', 'Brown', 'lisa.brown@company.com', '2023-02-10', 82000, 1),
    (1004, 'Tom', 'Garcia', 'tom.garcia@company.com', '2023-04-05', 71000, 3);

CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL,
    manager_id INTEGER,
    budget INTEGER
);
INSERT INTO departments (dept_id, dept_name, manager_id, budget) VALUES 
    (1, 'Engineering', 1003, 500000),
    (2, 'Marketing', 1002, 200000),
    (3, 'Sales', 1004, 300000);
"@

# Execute the SQL commands
sqlite3 $DatabasePath $sqlCommands

# Verify the database and table creation
Write-Host "Database contents:"
sqlite3 $DatabasePath "SELECT name FROM test;"

# Check if database was created successfully
if (-not (Test-Path $DatabasePath)) {
    Write-Error "FAILED: $DatabasePath was not created"
    exit 1
}

$dbSize = (Get-Item $DatabasePath).Length
Write-Host "Database file size: $dbSize bytes"

if ($dbSize -eq 0) {
    Write-Error "FAILED: $DatabasePath is empty"
    exit 1
}

Write-Host "✅ Test database created successfully: $DatabasePath"
