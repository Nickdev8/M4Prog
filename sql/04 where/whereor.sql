SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `kleren` (
    `id` int(11) NOT NULL,
    `beschrijving` varchar(100) NOT NULL,
    `kledingtype` varchar(100) NOT NULL,
    `kleur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;


ALTER TABLE `kleren`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `kleren`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;





INSERT INTO `kleren` (`id`, `beschrijving`, `kledingtype`, `kleur`)
 VALUES 
 (NULL, 'olymp overhemd', 'overhemd', 'wit'),
 (NULL, 'jakes overhemd', 'overhemd', 'blauw'),
 (NULL, 'eigen merk overhemd', 'overhemd', 'rood'),

  (NULL, 'mario tshirt', 'tshirt', 'rood'),
  (NULL, 'planet tshirt', 'tshirt', 'blauw'),
  (NULL, 'wit tshirt', 'tshirt', 'wit'),

  (NULL, 'spijker broek', 'broek', 'blauw'),
  (NULL, 'ripped spijker broek', 'broek', 'blauw'),
  (NULL, 'spijker broek', 'broek', 'zwart'),
  (NULL, 'nette witte broek', 'broek', 'wit') ;
 