--Alter statements 

--User to Address, Department, Employee_Type, and User_Role:
--A user is associated with one address, department, employee type, and user role. The User table has foreign keys for address_id, department_id, type_id, and role_id.
ALTER TABLE User
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id),
ADD FOREIGN KEY (department_id) REFERENCES Department (department_id),
ADD FOREIGN KEY (type_id) REFERENCES Employee_Type (type_id),
ADD FOREIGN KEY (role_id) REFERENCES User_Role (role_id);


--Client to Address:
--A client is associated with one address. The Client table has a foreign key for address_id.

ALTER TABLE Client
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id);


--Appointment to User and Client:
--An appointment involves one user (notary) and one client. The Appointment table has foreign keys for user_id and client_id.

ALTER TABLE Appointment
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Document to User and Client:
--A document is associated with one user (notary) and one client. The Document table has foreign keys for user_id and client_id.

ALTER TABLE Document
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Payment to Client and Document:
--A payment is made by a client for a specific document. The Payment table has foreign keys for client_id and document_id.

ALTER TABLE Payment
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id),
ADD FOREIGN KEY (document_id) REFERENCES Document (document_id);


--Review to User and Client:
--A review is written by a client about a user (notary). The Review table has foreign keys for user_id and client_id.

ALTER TABLE Review
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Invoice to Client:
--An invoice is issued to a client. The Invoice table has a foreign key for client_id.

ALTER TABLE Invoice
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Invoice_Item to Invoice and Service:
--An invoice item is associated with one invoice and one service. The Invoice_Item table has foreign keys for invoice_id and service_id.

ALTER TABLE Invoice_Item
ADD FOREIGN KEY (invoice_id) REFERENCES Invoice (invoice_id),
ADD FOREIGN KEY (service_id) REFERENCES Service (service_id);


--Notary_Location to User and Address:
--A notary location is associated with one user (notary) and one address. The Notary_Location table has foreign keys for user_id and address_id

ALTER TABLE Notary_Location
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (address_id) REFERENCES Address (address_id);


--Certification to User:
--A certification is associated with one user (notary). The Certification table has a foreign key for user_id.

ALTER TABLE Certification
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);


--User_Training to User and Training_Session:
--A user (notary) can attend multiple training sessions, and a training session can have multiple users attending. The User_Training table has foreign keys for user_id and session_id.

ALTER TABLE User_Training
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (session_id) REFERENCES Training_Session (session_id);


--Leave_Request to User:
--A leave request is made by a user. The Leave_Request table has a foreign key for user_id.

ALTER TABLE Leave_Request
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);


--Support_Ticket to Client:
--A support ticket is submitted by a client. The Support_Ticket table has a foreign key for client_id.

ALTER TABLE Support_Ticket
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Support_Ticket_Response to User and Support_Ticket:
--A support ticket response is associated with one user and one support ticket. The Support_Ticket_Response table has foreign keys for user_id and ticket_id.


ALTER TABLE Support_Ticket_Response
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (ticket_id) REFERENCES Support_Ticket (ticket_id);

--Appointment_Slot to User:
--An appointment slot is associated with one user (notary). The Appointment_Slot table has a foreign key for user_id.

ALTER TABLE Appointment_Slot
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);


--Client_Feedback to Client:
--A client feedback is submitted by a client. The Client_Feedback table has a foreign key for client_id.

ALTER TABLE Client_Feedback
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--Document_Document_Tag to Document and Document_Tag:
--A document can have multiple tags, and a tag can be associated with multiple documents. The Document_Document_Tag table has foreign keys for document_id and tag_id.

ALTER TABLE Document_Document_Tag
ADD FOREIGN KEY (document_id) REFERENCES Document (document_id),
ADD FOREIGN KEY (tag_id) REFERENCES Document_Tag (tag_id);


--Department_Budget to Department and Budget:
--A department can have an allocated budget, and a budget can be allocated to multiple departments. The Department_Budget table has foreign keys for department_id and budget_id.

ALTER TABLE Department_Budget
ADD FOREIGN KEY (department_id) REFERENCES Department (department_id),
ADD FOREIGN KEY (budget_id) REFERENCES Budget (budget_id);


--Expense to Budget:
--An expense is associated with a specific budget. The Expense table has a foreign key for budget_id.

ALTER TABLE Expense
ADD FOREIGN KEY (budget_id) REFERENCES Budget (budget_id);


--Communication to User and Client:
--A communication record is associated with one user (notary) and one client. The Communication table has foreign keys for user_id and client_id.

ALTER TABLE Communication
ADD FOREIGN KEY (user_id) REFERENCES User (user_id),
ADD FOREIGN KEY (client_id) REFERENCES Client (client_id);


--User_Performance to User:
--A user performance record is associated with one user. The User_Performance table has a foreign key for user_id.

ALTER TABLE User_Performance
ADD FOREIGN KEY (user_id) REFERENCES User (user_id);





