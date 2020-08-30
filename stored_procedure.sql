
--FOR ADDING CUSTOMER IN DB
DELIMITER $$
Create PROCEDURE hello(
 	IN p_email varchar(255),
 	IN p_name Varchar(20), 
 	IN p_active tinyint(1)
 	)
    BEGIN
    INSERT INTO customers(email, name, active) VALUES (p_email,p_name,p_active);
    END $$
DELIMITER ;

--FOR RETRIEVING CUSTOMERS FROM DB
DELIMITER $$
Create PROCEDURE GetAll(
 	BEGIN
    SELECT * FROM customers;
    END $$
DELIMITER ;