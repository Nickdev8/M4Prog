CREATE TABLE IF NOT EXISTS kaarten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    kost INT NOT NULL,
    aanval INT NOT NULL,
    verdediging INT NOT NULL,
    type VARCHAR(50) DEFAULT 'Onbekend',
    zeldzaamheid VARCHAR(50) DEFAULT 'Common',
    effect TEXT,
    beschrijving TEXT,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
