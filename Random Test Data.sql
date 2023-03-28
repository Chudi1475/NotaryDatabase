
	 INSERT INTO User (user_id, first_name, last_name, email, password, phone_number, role, availability, date_joined, monthly_salary, address_id, department_id, type_id, role_id)
     VALUES
     (1, 'Chen', 'Wang', 'chen.wang@cougarnet.uh.edu', 'password123', '713-123-4567', 'Notary', 'Available', '2021-08-01', 3500.00, 1, 1, 1, 1),
     (2, 'Adeola', 'Oluwaseun', 'adeola.oluwaseun@cougarnet.uh.edu', 'password123', '832-234-5678', 'Admin', 'Available', '2020-05-15', 4500.00, 2, 2, 2, 2),
     (3, 'Giovanni', 'Rossi', 'giovanni.rossi@cougarnet.uh.edu', 'password123', '281-345-6789', 'Manager', 'Unavailable', '2019-10-10', 5000.00, 3, 3, 3, 3),
     (4, 'Jose', 'Garcia', 'jose.garcia@cougarnet.uh.edu', 'password123', '346-456-7890', 'Notary', 'Available', '2022-01-01', 3500.00, 4, 1, 1, 1),
     (5, 'Giorno', 'Giovanna', 'giorno.giovanna@cougarnet.uh.edu', 'password123', '713-567-8901', 'Notary', 'Unavailable', '2021-11-01', 3500.00, 5, 1, 1, 1),
     (6, 'Hirohiko', 'Araki', 'hirohiko.araki@cougarnet.uh.edu', 'password123', '832-678-9012', 'Admin', 'Available', '2020-03-05', 4500.00, 6, 2, 2, 2),
     (7, 'Chika', 'Yamada', 'chika.yamada@cougarnet.uh.edu', 'password123', '281-789-0123', 'Manager', 'Available', '2019-06-20', 5000.00, 7, 3, 3, 3),
     (8, 'Amina', 'Adewale', 'amina.adewale@cougarnet.uh.edu', 'password123', '346-890-1234', 'Notary', 'Unavailable', '2022-02-15', 3500.00, 8, 1, 1, 1),
     (9, 'Cristina', 'Gomez', 'cristina.gomez@cougarnet.uh.edu', 'password123', '713-901-2345', 'Notary', 'Available', '2021-09-01', 3500.00, 9, 1, 1, 1),
     (10, 'Marco', 'Ferrari', 'marco.ferrari@cougarnet.uh.edu', 'password123', '832-012-3456', 'Admin', 'Available', '2020-07-01', 4500.00, 10, 2, 2, 2),
     (11, 'Jotaro', 'Kujo', 'jotaro.kujo@cougarnet.uh.edu', 'password123', '281-234-5670', 'Manager', 'Available', '2019-04-01', 5000.00, 11, 3, 3, 3),
     (12, 'Yasmin', 'Vargas', 'yasmin.vargas@cougarnet.uh.edu', 'password123', '346-345-6780', 'Notary', 'Unavailable', '2022-06-01', 3500.00, 12, 1, 1, 1),
     (13, 'Chihiro', 'Suzuki', 'chihiro.suzuki@cougarnet.uh.edu', 'password123', '713-456-7891', 'Notary', 'Available', '2021-02-01', 3500.00, 13, 1, 1, 1),
     (14, 'Tunde', 'Okoye', 'tunde.okoye@cougarnet.uh.edu', 'password123', '832-567-8902', 'Admin', 'Available', '2020-12-01', 4500.00, 14, 2, 2, 2),
     (15, 'Lucia', 'Esposito', 'lucia.esposito@cougarnet.uh.edu', 'password123', '281-678-9013', 'Manager', 'Available', '2019-01-01', 5000.00, 15, 3, 3, 3);
	
	INSERT INTO Client (client_id, first_name, last_name, email, password, phone_number, date_joined, address_id, source_id)
VALUES
(10, 'Ryosuke', 'Takahashi', 'ryosuke.takahashi@cougarnet.uh.edu', 'clientpw123', '713-789-0124', '2021-06-01', 16, 1),
(12, 'Elena', 'Bianchi', 'elena.bianchi@cougarnet.uh.edu', 'clientpw123', '281-901-2346', '2019-07-01', 18, 3),
(13, 'Juan', 'Ortiz', 'juan.ortiz@cougarnet.uh.edu', 'clientpw123', '346-012-3457', '2021-01-01', 19, 4),
(14, 'Narancia', 'Ghirga', 'narancia.ghirga@cougarnet.uh.edu', 'clientpw123', '713-234-5671', '2020-11-01', 20, 1),
(16, 'Kemi', 'Balogun', 'kemi.balogun@cougarnet.uh.edu', 'clientpw123', '281-456-7893', '2021-09-01', 22, 3),
(17, 'Federico', 'De Luca', 'federico.deluca@cougarnet.uh.edu', 'clientpw123', '346-567-8903', '2020-04-01', 23, 4),
(18, 'Isabela', 'Mendez', 'isabela.mendez@cougarnet.uh.edu', 'clientpw123', '713-678-9014', '2019-08-01', 24, 1),
(19, 'Josuke', 'Higashikata', 'josuke.higashikata@cougarnet.uh.edu', 'clientpw123', '832-789-0125', '2021-07-01', 25, 2),
(20, 'Sakura', 'Kobayashi', 'sakura.kobayashi@cougarnet.uh.edu', 'clientpw123', '281-890-1236', '2020-09-01', 26, 3),
(43, 'Segun', 'Adeyemi', 'segun.adeyemi@cougarnet.uh.edu', 'clientpw123', '346-901-2347', '2019-06-01', 27, 4),
(999, 'Chidinma', 'Eze', 'chidinma.eze@cougarnet.uh.edu', 'clientpw123', '832-890-1235', '2020-10-01', 17, 2);

INSERT INTO Appointment (appointment_id, user_id, client_id, date, time, status)
VALUES
(1, 1, 10, '2023-04-05', '09:00:00', 'Scheduled'),
(2, 4, 12, '2023-04-10', '14:00:00', 'Scheduled'),
(3, 9, 13, '2023-04-15', '11:30:00', 'Scheduled'),
(4, 1, 14, '2023-04-20', '15:30:00', 'Scheduled'),
(5, 13, 16, '2023-04-25', '10:00:00', 'Scheduled'),
(6, 9, 17, '2023-04-27', '16:00:00', 'Scheduled'),
(7, 4, 18, '2023-04-28', '13:00:00', 'Scheduled'),
(8, 1, 19, '2023-05-02', '09:30:00', 'Scheduled'),
(9, 12, 20, '2023-05-05', '14:30:00', 'Scheduled'),
(10, 9, 43, '2023-05-10', '11:00:00', 'Scheduled'),
(11, 4, 999, '2023-05-12', '15:00:00', 'Scheduled');


INSERT INTO Document (document_id, client_id, user_id, document_type, status, date_submitted, date_notarized)
VALUES
(1, 10, 1, 'Power of Attorney', 'Notarized', '2023-02-15', '2023-02-16'),
(2, 12, 4, 'Affidavit', 'Notarized', '2023-02-20', '2023-02-21'),
(3, 13, 9, 'Mortgage Agreement', 'Submitted', '2023-03-01', NULL),
(4, 14, 1, 'Deed of Trust', 'Notarized', '2023-03-05', '2023-03-06'),
(5, 16, 13, 'Promissory Note', 'Rejected', '2023-03-10', NULL),
(6, 17, 9, 'Bill of Sale', 'Notarized', '2023-03-12', '2023-03-13'),
(7, 18, 4, 'Last Will and Testament', 'Submitted', '2023-03-15', NULL),
(8, 19, 1, 'Medical Consent', 'Notarized', '2023-03-20', '2023-03-21'),
(9, 20, 12, 'Living Trust', 'Notarized', '2023-03-22', '2023-03-23'),
(10, 43, 9, 'Rental Agreement', 'Rejected', '2023-03-25', NULL),
(11, 999, 4, 'Non-Disclosure Agreement', 'Notarized', '2023-03-28', '2023-03-29');


INSERT INTO Payment (payment_id, client_id, document_id, amount, date, payment_method)
VALUES
(1, 10, 1, 50.00, '2023-02-16', 'Credit Card'),
(2, 12, 2, 40.00, '2023-02-21', 'Debit Card'),
(3, 14, 4, 60.00, '2023-03-06', 'PayPal'),
(4, 16, 5, 45.00, '2023-03-10', 'Credit Card'),
(5, 17, 6, 30.00, '2023-03-13', 'Debit Card'),
(6, 19, 8, 55.00, '2023-03-21', 'PayPal'),
(7, 20, 9, 70.00, '2023-03-23', 'Credit Card'),
(8, 43, 10, 35.00, '2023-03-25', 'Debit Card'),
(9, 999, 11, 65.00, '2023-03-29', 'PayPal');


INSERT INTO Review (review_id, client_id, user_id, rating, comment, date)
VALUES
(1, 10, 1, 5, 'Great service, very professional!', '2023-02-18'),
(2, 12, 4, 4, 'Everything went smoothly.', '2023-02-23'),
(3, 14, 1, 3, 'The notary was a bit late, but overall it was okay.', '2023-03-08'),
(4, 16, 9, 4, 'Quick and efficient service.', '2023-03-12'),
(5, 17, 1, 5, 'Excellent notary, highly recommended!', '2023-03-15'),
(6, 19, 4, 2, 'The process took longer than expected.', '2023-03-23'),
(7, 20, 13, 5, 'The notary was very helpful and friendly.', '2023-03-25'),
(8, 43, 9, 1, 'Terrible experience, very unprofessional.', '2023-03-27'),
(9, 999, 1, 3, 'The service was fine, nothing extraordinary.', '2023-03-31');


INSERT INTO Address (address_id, street, city, state, zip_code, country)
VALUES
(1, '301 Congress Ave', 'Austin', 'TX', '78701', 'USA'),
(2, '3422 Business Center Dr', 'Pearland', 'TX', '77584', 'USA'),
(3, '11420 Eagle Dr', 'Mont Belvieu', 'TX', '77580', 'USA'),
(4, '1417 S Mason Rd', 'Katy', 'TX', '77450', 'USA'),
(5, '1001 Main St', 'Galveston', 'TX', '77550', 'USA'),
(6, '2450 Louisiana St', 'Houston', 'TX', '77006', 'USA'),
(7, '2000 Sam Houston St', 'Liberty', 'TX', '77575', 'USA'),
(8, '3000 Research Forest Dr', 'The Woodlands', 'TX', '77381', 'USA'),
(9, '31203 FM 2920', 'Waller', 'TX', '77484', 'USA'),
(10, '111 Congress Ave', 'Austin', 'TX', '78701', 'USA'),
(11, '12633 Shadow Creek Pkwy', 'Pearland', 'TX', '77584', 'USA'),
(12, '6819 FM 3180 Rd', 'Baytown', 'TX', '77523', 'USA'),
(13, '9920 Highway 90A', 'Sugar Land', 'TX', '77478', 'USA'),
(14, '2218 Seawall Blvd', 'Galveston', 'TX', '77550', 'USA'),
(15, '8701 Westheimer Rd', 'Houston', 'TX', '77063', 'USA'),
(16, '1902 Trinity St', 'Liberty', 'TX', '77575', 'USA'),
(17, '1300 S Loop 336 W', 'Conroe', 'TX', '77304', 'USA'),
(18, '31154 FM 2920', 'Waller', 'TX', '77484', 'USA'),
(19, '600 Congress Ave', 'Austin', 'TX', '78701', 'USA'),
(20, '3002 Silverlake Village Dr', 'Pearland', 'TX', '77584', 'USA'),
(21, '1700 I-10', 'Baytown', 'TX', '77521', 'USA'),
(22, '14090 Southwest Fwy', 'Sugar Land', 'TX', '77478', 'USA'),
(23, '2115 61st St', 'Galveston', 'TX', '77551', 'USA'),
(24, '5801 Memorial Dr', 'Houston', 'TX', '77007', 'USA'),
(25, '1629 Grand Ave', 'Liberty', 'TX', '77575', 'USA'),
(26, '8000 Research Forest Dr', 'The Woodlands', 'TX', '77382', 'USA'),
(27, '40040 Hempstead Hwy', 'Waller', 'TX', '77484', 'USA');

INSERT INTO Department (department_id, department_name) 
VALUES
     (1, 'Notary Services'),
     (2, 'Administrative'),
     (3, 'Management');

INSERT INTO Service (service_id, service_name, service_description, service_fee)
VALUES
(1, 'Standard Notarization', 'Notarization of a single document with up to 2 signatures.', 15.00),
(2, 'Multiple Signatures Notarization', 'Notarization of a single document with 3 to 5 signatures.', 25.00),
(3, 'Bulk Notarization', 'Notarization of multiple documents or documents with more than 5 signatures.', 40.00),
(4, 'Apostille Service', 'Authentication of a document for use in a foreign country.', 50.00),
(5, 'Mobile Notary Service', 'Travel to a client location for notarization services.', 75.00);


