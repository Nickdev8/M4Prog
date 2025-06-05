CREATE TABLE `teamv2` (
  id INT PRIMARY KEY,
  teamnaam VARCHAR(50)
);

CREATE TABLE `teamlidv2` (
  id INT PRIMARY KEY,
  voornaam VARCHAR(50),
  achternaam VARCHAR(50)
);

CREATE TABLE `teamlidv2_teamv2` (
  teamlidid INT,
  teamid INT,
    PRIMARY KEY (`teamlidid`, `teamid`),
  UNIQUE INDEX `teamlid_team_UNIQUE` (`teamlidid` ASC,`teamid` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;





insert into teamv2 (id,teamnaam) values 
(1,'flowerpower'),
(2,'poisonshroom'),
(3,'goombas'),
(4,'the toad army');


insert into teamlidv2 (id,voornaam,achternaam) values 
(1,'mario','mario'),
(2,'luigi','mario'),
(3,'peach','?'),
(4,'toad','the one and only'),

(5,'kamek','the witch'),
(6,'waluigi','waa'),
(7,'wario','waa'),
(8,'bowser','the great');


insert into teamlidv2_teamv2 (teamlidid,teamid) values 
(1,1),
(2,1),
(3,1),
(4,1),

(5,2),
(6,2),
(7,2),
(8,2);

