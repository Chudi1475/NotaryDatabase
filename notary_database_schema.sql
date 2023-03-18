CREATE DATABASE NOTARY_SYSTEM

USE NOTARY_SYSTEM

CREATE TABLE User (
user_id INTEGER PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
role ENUM('Admin', 'Notary', 'Manager') NOT NULL,
availability ENUM('Available', 'Unavailable') NOT NULL,
date_joined DATE NOT NULL,
monthly_salary DECIMAL(10,2) NOT NULL,
address_id INTEGER NOT NULL,
department_id INTEGER NOT NULL,
type_id INTEGER NOT NULL,
role_id INTEGER NOT NULL
);

CREATE TABLE Client (
client_id INTEGER PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
date_joined DATE NOT NULL,
address_id INTEGER NOT NULL,
source_id INTEGER NOT NULL
);

CREATE TABLE Appointment (
appointment_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
client_id INTEGER NOT NULL,
date DATE NOT NULL,
time TIME NOT NULL,
status ENUM('Scheduled', 'Completed', 'Canceled') NOT NULL
);

CREATE TABLE Document (
document_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
document_type VARCHAR(50) NOT NULL,
status ENUM('Submitted', 'Notarized', 'Rejected') NOT NULL,
date_submitted DATE NOT NULL,
date_notarized DATE
);

CREATE TABLE Payment (
payment_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
document_id INTEGER NOT NULL,
amount DECIMAL(10,2) NOT NULL,
date DATE NOT NULL,
payment_method ENUM('Credit Card', 'Debit Card', 'PayPal') NOT NULL
);

CREATE TABLE Review (
review_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
rating INTEGER NOT NULL CHECK(rating >= 1 AND rating <= 5),
comment TEXT,
date DATE NOT NULL
);

CREATE TABLE Address (
address_id INTEGER PRIMARY KEY NOT NULL,
street VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(2) NOT NULL,
zip_code VARCHAR(10) NOT NULL,
country VARCHAR(50) NOT NULL
);

CREATE TABLE Service (
service_id INTEGER PRIMARY KEY NOT NULL,
service_name VARCHAR(100) NOT NULL,
service_description TEXT NOT NULL,
service_fee DECIMAL(10,2) NOT NULL
);
CREATE TABLE Invoice (
invoice_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
date DATE NOT NULL,
total_amount DECIMAL(10,2) NOT NULL
);
CREATE TABLE Employee_Type (
type_id INTEGER PRIMARY KEY NOT NULL,
type_name VARCHAR(100) NOT NULL
);
CREATE TABLE User_Role (
role_id INTEGER PRIMARY KEY NOT NULL,
role_name VARCHAR(100) NOT NULL,
permissions TEXT NULL
);

CREATE TABLE Invoice_Item (
invoice_item_id INTEGER PRIMARY KEY NOT NULL,
invoice_id INTEGER NOT NULL,
service_id INTEGER NOT NULL,
quantity INTEGER NOT NULL,
amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (invoice_id) REFERENCES Invoice (invoice_id),
FOREIGN KEY (service_id) REFERENCES Service (service_id)
);

CREATE TABLE Notary_Location (
location_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
address_id INTEGER NOT NULL,
location_name VARCHAR(100) NOT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id),
FOREIGN KEY (address_id) REFERENCES Address (address_id)
);

CREATE TABLE Certification (
certification_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
certification_name VARCHAR(100) NOT NULL,
issuing_organization VARCHAR(100) NOT NULL,
issue_date DATE NOT NULL,
expiration_date DATE NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id)
);

CREATE TABLE Training_Session (
session_id INTEGER PRIMARY KEY NOT NULL,
session_name VARCHAR(100) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
description TEXT NULL,
capacity INTEGER NOT NULL
);

CREATE TABLE User_Training (
user_id INTEGER NOT NULL,
session_id INTEGER NOT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id),
FOREIGN KEY (session_id) REFERENCES Training_Session (session_id),
PRIMARY KEY (user_id, session_id)
);

CREATE TABLE Leave_Request (
request_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
leave_type ENUM('Vacation', 'Sick', 'Personal', 'Maternity/Paternity') NOT NULL,
status ENUM('Pending', 'Approved', 'Denied') NOT NULL,
reason TEXT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id)
);

CREATE TABLE Support_Ticket (
ticket_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
ticket_subject VARCHAR(200) NOT NULL,
ticket_description TEXT NOT NULL,
submission_date DATE NOT NULL,
status ENUM('Open', 'In Progress', 'Resolved', 'Closed') NOT NULL,
priority ENUM('Low', 'Medium', 'High', 'Urgent') NOT NULL,
FOREIGN KEY (client_id) REFERENCES Client (client_id)
);

CREATE TABLE Support_Ticket_Response (
response_id INTEGER PRIMARY KEY NOT NULL,
ticket_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
response_text TEXT NOT NULL,
response_date DATE NOT NULL,
FOREIGN KEY (ticket_id) REFERENCES Support_Ticket (ticket_id),
FOREIGN KEY (user_id) REFERENCES User (user_id)
);
CREATE TABLE Appointment_Slot (
slot_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
start_time DATETIME NOT NULL,
end_time DATETIME NOT NULL,
status ENUM('Available', 'Booked', 'Canceled') NOT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id)
);

CREATE TABLE Client_Feedback (
feedback_id INTEGER PRIMARY KEY NOT NULL,
client_id INTEGER NOT NULL,
feedback_text TEXT NOT NULL,
feedback_date DATE NOT NULL,
rating ENUM('1', '2', '3', '4', '5') NOT NULL,
FOREIGN KEY (client_id) REFERENCES Client (client_id)
);

CREATE TABLE Document_Tag (
tag_id INTEGER PRIMARY KEY NOT NULL,
tag_name VARCHAR(100) NOT NULL
);

CREATE TABLE Document_Document_Tag (
document_id INTEGER NOT NULL,
tag_id INTEGER NOT NULL,
FOREIGN KEY (document_id) REFERENCES Document (document_id),
FOREIGN KEY (tag_id) REFERENCES Document_Tag (tag_id)
);

CREATE TABLE Department (
department_id INTEGER PRIMARY KEY NOT NULL,
department_name VARCHAR(100) NOT NULL,
description TEXT NULL
);

CREATE TABLE User_Performance (
performance_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
performance_metric VARCHAR(100) NOT NULL,
performance_score DECIMAL(5,2) NOT NULL,
evaluation_date DATE NOT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id)
);

CREATE TABLE Budget (
budget_id INTEGER PRIMARY KEY NOT NULL,
budget_name VARCHAR(100) NOT NULL,
budget_period_start DATE NOT NULL,
budget_period_end DATE NOT NULL,
total_amount DECIMAL(10,2) NOT NULL,
allocated_amount DECIMAL(10,2) NOT NULL,
remaining_amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE Department_Budget (
department_id INTEGER NOT NULL,
budget_id INTEGER NOT NULL,
allocated_amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (department_id) REFERENCES Department (department_id),
FOREIGN KEY (budget_id) REFERENCES Budget (budget_id)
);

CREATE TABLE Expense (
expense_id INTEGER PRIMARY KEY NOT NULL,
budget_id INTEGER NOT NULL,
expense_date DATE NOT NULL,
expense_name VARCHAR(100) NOT NULL,
description TEXT NULL,
amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (budget_id) REFERENCES Budget (budget_id)
);

CREATE TABLE Communication (
communication_id INTEGER PRIMARY KEY NOT NULL,
user_id INTEGER NOT NULL,
client_id INTEGER NOT NULL,
communication_type ENUM('Email', 'Phone', 'SMS', 'In-person') NOT NULL,
date DATE NOT NULL,
message TEXT NOT NULL,
status ENUM('Opened', 'Closed') NOT NULL,
FOREIGN KEY (user_id) REFERENCES User (user_id),
FOREIGN KEY (client_id) REFERENCES Client (client_id)
);



CREATE TABLE Document_Type (
document_type_id INTEGER PRIMARY KEY NOT NULL,
document_type_name VARCHAR(100) NOT NULL,
document_type_description TEXT NULL
);

ALTER TABLE User
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id),
ADD FOREIGN KEY (department_id) REFERENCES Department (department_id),
ADD FOREIGN KEY (type_id) REFERENCES Employee_Type (type_id),
ADD FOREIGN KEY (role_id) REFERENCES User_Role (role_id);

ALTER TABLE Client
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id),
ADD FOREIGN KEY (source_id) REFERENCES Source (source_id);

ALTER TABLE Appointment
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);

ALTER TABLE Document
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id),
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Payment
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id),
ADD FOREIGN KEY (document_id) REFERENCES Document (document_id);

ALTER TABLE Review
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id),
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Invoice_Item
ADD FOREIGN KEY (invoice_id) REFERENCES Invoice (invoice_id),
ADD FOREIGN KEY (service_id) REFERENCES Service (service_id);

ALTER TABLE Notary_Location
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id);

ALTER TABLE Certification
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE User_Training
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (session_id) REFERENCES Training_Session (session_id);

ALTER TABLE Leave_Request
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Support_Ticket
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);

ALTER TABLE Support_Ticket_Response
ADD FOREIGN KEY (ticket_id) REFERENCES Support_Ticket (ticket_id),
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Appointment_Slot
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Client_Feedback
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);

ALTER TABLE Document_Document_Tag
ADD FOREIGN KEY (document_id) REFERENCES Document (document_id),
ADD FOREIGN KEY (tag_id) REFERENCES Document_Tag (tag_id);

ALTER TABLE User_Performance
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);

ALTER TABLE Department_Budget
ADD FOREIGN KEY (department_id) REFERENCES Department (department_id),
ADD FOREIGN KEY (budget_id) REFERENCES Budget (budget_id);

ALTER TABLE Expense
ADD FOREIGN KEY (budget_id) REFERENCES Budget (budget_id);

ALTER TABLE Communication
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);
