SELECT * FROM objet WHERE etat=3;


SELECT SUM(bill) FROM `contrat location` WHERE  MONTH(startAt)= MONTH(CURRENT_DATE);


SELECT SUM(TIMEDIFF(startAt,endAt)) from `contrat location`;

SELECT SUM(bill) FROM `contrat location` WHERE  MONTH(startAt)= MONTH(CURRENT_DATE) AND `id user` = 1;

SELECT AVG(TIMEDIFF(startAt,endAt))  from `contrat location` WHERE `id user` = 1;
