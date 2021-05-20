-- -----------------------------------------------------
--creation user
-- -----------------------------------------------------
INSERT INTO user(ID,username,email,password,create_time,disable) VALUES
    (1,'test','test@gmail.com','test','2021-05-20 00:00:00',0),
    (2,'test1','test1@gmail.com','test','2020-05-20 00:00:00',0),
    (3,'test2','test2@gmail.com','test','2019-05-19 00:00:00',0),
    (4,'test3','test3@gmail.com','test','2019-05-21 00:00:00',0)
;

-- -----------------------------------------------------
-- creation abonement
-- -----------------------------------------------------
INSERT INTO abonement (name, `valeur reduction`) VALUES
    ('free',0),
    ('premium',0.75),
    ('vip',0.75)
;


-- -----------------------------------------------------
-- creation objet
-- -----------------------------------------------------

INSERT INTO objet(nom, prix,entrepot, locataire,etat,disable,category_id,create_time,update_time) VALUES
    ('test',50,1,1,3,0,1,NULL,NULL),
    ('test2',50,1,1,3,0,1,NULL,NULL),
    ('test3',50,1,1,3,0,1,NULL,NULL),
    ('test4',50,1,1,1,0,1,NULL,NULL),
    ('test5',50,1,1,1,0,1,NULL,NULL),
    ('test6',50,1,1,1,0,1,NULL,NULL),
    ('test7',50,1,1,1,0,1,NULL,NULL),
    ('test8',50,1,1,1,0,1,NULL,NULL),
    ('test9',50,1,1,1,0,1,NULL,NULL),
    ('test10',50,1,3,1,0,3,NULL,NULL),
    ('test11',50,1,3,1,0,3,NULL,NULL),
    ('test12',50,1,3,1,0,3,NULL,NULL)
;
-- -----------------------------------------------------
-- creation etat
-- -----------------------------------------------------
INSERT INTO etat(name) VALUES
    ('neuf'),
    ('en etat'),
    ('endomage')
;
-- -----------------------------------------------------
-- creation category
-- -----------------------------------------------------
INSERT INTO category(name) VALUES
    ('electromenager'),
    ('high-tech')
;
-- -----------------------------------------------------
-- creation location
-- -----------------------------------------------------
INSERT INTO location(lattitude,longitude,`id objet`,`id user`,`last loc time`) VALUES
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,1,NULL,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE),
    (412236,243536,NULL,1,CURRENT_DATE)
    
;


;

-- -----------------------------------------------------
-- creation entrepot
-- -----------------------------------------------------
INSERT INTO entrepot(`Name entrepot`,adresse,cp) VALUES
    ('entrepot','2 rue moliere','78100'),
    ('entrepot1','8 rue moliere','78100')
;




-- -----------------------------------------------------
-- creation reparation object
-- -----------------------------------------------------
INSERT INTO `reparation object`(ID_objet,`id reparateut`,Retrieve_time) VALUES
    (12,1,CURRENT_DATE),
    (13,1,CURRENT_DATE),
    (14,1,CURRENT_DATE)
;




-- -----------------------------------------------------
-- creation reparateur
-- -----------------------------------------------------
INSERT INTO reparteur(Name) VALUES
    ('bob reparateur')
;