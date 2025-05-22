-- 05_telefoongespreknorm.sql

-- 1) Klant-tabel
CREATE TABLE klant (
  klantid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  naam VARCHAR(220) NOT NULL,
  leeftijd INT NOT NULL,
  telefoonnummer VARCHAR(12) NOT NULL,
  UNIQUE INDEX idx_telefoonnummer (telefoonnummer)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

-- 2) Telefoongesprek-tabel
CREATE TABLE telefoonGesprek (
  gesprekid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  klantid INT NOT NULL,
  gesprekStart DATETIME NOT NULL,
  gesprekEind DATETIME NOT NULL,
  gesprekNaarTelefoonnummer VARCHAR(12) NOT NULL,
  FOREIGN KEY (klantid)
    REFERENCES klant(klantid)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;



INSERT INTO klant (klantid, naam, leeftijd, telefoonnummer)
VALUES
  (1, 'leraar', 50, '0600001111');

INSERT INTO telefoonGesprek (
    klantid,
    gesprekStart,
    gesprekEind,
    gesprekNaarTelefoonnummer
) VALUES
  (1, '2024-01-01 00:46:00', '2024-01-01 00:50:32', '0691542435'),
  (1, '2024-01-01 00:50:32', '2024-01-01 00:59:29', '0634633400'),
  (1, '2024-01-01 00:59:29', '2024-01-01 01:04:56', '0666939315'),
  (1, '2024-01-01 01:04:56', '2024-01-01 01:14:53', '0612733029'),
  (1, '2024-01-01 01:14:53', '2024-01-01 01:32:51', '0670946302'),
  (1, '2024-01-01 01:32:51', '2024-01-01 01:39:39', '0686324659'),
  (1, '2024-01-01 01:39:39', '2024-01-01 01:58:40', '0672994777'),
  (1, '2024-01-01 01:58:40', '2024-01-01 02:09:35', '0671885824'),
  (1, '2024-01-01 02:09:35', '2024-01-01 02:19:39', '0626841211'),
  (1, '2024-01-01 02:19:39', '2024-01-01 02:28:56', '0698968939'),
  (1, '2024-01-01 02:28:56', '2024-01-01 02:41:41', '0612735486'),
  (1, '2024-01-01 02:41:41', '2024-01-01 02:49:01', '0696170963'),
  (1, '2024-01-01 02:49:01', '2024-01-01 02:59:43', '0620706195'),
  (1, '2024-01-01 02:59:43', '2024-01-01 03:05:36', '0681528902'),
  (1, '2024-01-01 03:05:36', '2024-01-01 03:12:02', '0623214253'),
  (1, '2024-01-01 03:12:02', '2024-01-01 03:16:26', '0674685414');
