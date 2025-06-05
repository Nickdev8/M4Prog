CREATE TABLE helpdeskmedewerkerv2 (
  id INT PRIMARY KEY,
  voornaam VARCHAR(50),
  achternaam VARCHAR(50)
);

CREATE TABLE klantv2 (
  id INT PRIMARY KEY,
  voornaam VARCHAR(50),
  achternaam VARCHAR(50)
);

CREATE TABLE gesprekv2 (
  id INT PRIMARY KEY AUTO_INCREMENT,
  klantid INT,
  helpdeskid INT,
  datum DATETIME,
  onderwerp VARCHAR(100),
  FOREIGN KEY (klantid) REFERENCES klantv2(id),
  FOREIGN KEY (helpdeskid) REFERENCES helpdeskmedewerkerv2(id)
);


INSERT INTO helpdeskmedewerkerv2 (id, voornaam, achternaam) VALUES
(1, 'Sophie', 'Jansen'),
(2, 'Mark', 'de Boer');

INSERT INTO klantv2 (id, voornaam, achternaam) VALUES
(1, 'Emma', 'Visser'),
(2, 'Lars', 'van Dijk');

INSERT INTO gesprekv2 (klantid, helpdeskid, datum, onderwerp) VALUES
(1, 1, '2025-06-01 09:30:00', 'Probleem met inloggen'),
(2, 1, '2025-06-01 11:00:00', 'E-mail werkt niet'),
(1, 2, '2025-06-02 10:15:00', 'Vraag over factuur');


SELECT 
  g.id AS gesprek_id,
  g.datum,
  g.onderwerp,
  k.voornaam AS klant_voornaam,
  k.achternaam AS klant_achternaam,
  h.voornaam AS medewerker_voornaam,
  h.achternaam AS medewerker_achternaam
FROM gesprekv2 g
JOIN klantv2 k ON g.klantid = k.id
JOIN helpdeskmedewerkerv2 h ON g.helpdeskid = h.id;


-- gesprek, klant en helpdeskmedewerker bestonden al, dus ik heb v2 toegevoegd aan de tabelnamen.