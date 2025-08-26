/*
#Exercice 0 : Connection à la base de donnée
*/
      mariadb -u root -p 
      USE mydatabase;
/*
#Exercice 1 : Création d une base de données et de tables

    Créez une table nommée client avec les champs suivants :

    Id(clé primaire).
    Nom.
    Prénom.
    Adresse email.
    Date d inscription.

    Insérez 2 clients dans la table pour tester.
    
*/





 CREATE TABLE  `client`(
 'id' INT AUTO_INCREMENT PRIMARY KEY, 
      `lastname` VARCHAR(100),
    'firstname' VARCHAR(100),
     'mail' VARCHAR (255), 
    'date' Date
);

INSERT INTO `client` (`lastname`, `firstname`,'mail' 'date') 
VALUES ('Tamanate', 'balamini', 'balamslad41@gmail.com' , '26/08/2025');

 SELECT * FROM `client`;

 ALTER TABLE `client`
 CHANGE  `first_name` VARCHAR(100);





-- CREATE TABLE `customer` (
--     'id' INT AUTO_INCREMENT PRIMARY KEY,
--     'lastname' VARCHAR(100),
--     'firstname' VARCHAR(100),
--     'mail' VARCHAR(255),
--     'date' Date
-- );

-- SHOW TABLES;

-- INSERT INTO `customer` (`lastname`, `firstname`, `mail`, `date`)
-- VALUES
-- ('Doe', 'John', 'john.doe@example.com', '2023-01-15'),
-- ('Smith', 'Jane', 'jane.smith@example.com', '2023-02-20');

-- SELECT * FROM `client`;

-- ALTER TABLE `client`
-- CHANGE `prenom` `first_name` VARCHAR(100);


/*
#Exercice 2 : Création d une base de données et de tables

    Créez une table nommée commande avec les champs suivants :
        Id (clé primaire).
        Id_client (clé étrangère).
        Date de la commande.
        Montant total.

    Insérez quelques valeurs dans la tables commande pour tester la configuration.
    Afficher toutes les commandes du client avec l'id 1

*/

--  CREATE TABLE  `order`(
--  'id' INT AUTO_INCREMENT PRIMARY KEY, 
--       `order_date` DATE(100),
--       'order_amount'DATE (100),
--       'date' Date
-- );

CREATE TABLE `order` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `id_customer` INT,
    `date` Date, 
    `total` FLOAT,
    FOREIGN KEY (id_customer) REFERENCES customer(id)
);

SHOW TABLES;

INSERT INTO `order` (`id_customer`,`date`,`total`)
VALUES( 1,'2025-07-12',31.7),(2 ,'2025-04-24',182);

SELECT * FROM `order`;

SELECT *
FROM `customer`
INNER JOIN `order` ON `customer`.`id` = `order`.`id_customer`
WHERE `customer`.`id` = 1;








