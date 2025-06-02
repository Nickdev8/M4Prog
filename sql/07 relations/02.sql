CREATE TABLE IF NOT EXISTS ingredient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS voedselProduct (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hoofdIngredientId INT,
    naam VARCHAR(250)
);

INSERT INTO ingredient (naam) VALUES
('pindas');

INSERT INTO voedselProduct (hoofdIngredientId, naam) VALUES
(1, 'pindakaas');
