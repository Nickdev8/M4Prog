CREATE TABLE game (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    naam VARCHAR(100) NOT NULL,
    platform VARCHAR(50) NOT NULL,
    jaar INT NOT NULL,
    uitgebracht TINYINT(1) NOT NULL,
    prijs DECIMAL(5,2) NOT NULL,
    genre VARCHAR(50) NOT NULL
);

INSERT INTO game (naam, platform, jaar, uitgebracht, prijs, genre) VALUES
('Elden Ring',    'PC',     2022, 1, 59.99, 'RPG'),
('Mario Kart',    'Switch', 2017, 1, 49.99, 'Racing'),
('God of War',    'PS5',    2022, 1, 69.99, 'Action'),
('Starfield',     'PC',     2023, 1, 69.99, 'RPG'),
('Hollow Knight', 'Switch', 2025, 0, 34.99, 'Platformer'),
('Gran Turismo',  'PS5',    2022, 1, 59.99, 'Racing'),
('Metroid Prime', 'Switch', 2025, 0, 59.99, 'Action');

SELECT * FROM game WHERE platform = 'Switch' AND prijs < 50;
SELECT * FROM game WHERE genre IN ('RPG', 'Racing') AND uitgebracht = 1;
SELECT * FROM game WHERE prijs = 59.99 AND genre = 'Action' AND uitgebracht = 0;