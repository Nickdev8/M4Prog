CREATE TABLE IF NOT EXISTS kat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250)
);

INSERT INTO kat (naam) VALUES
('spinner'),
('pluisje');

SELECT * FROM kat;
