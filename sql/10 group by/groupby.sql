-- 1
SELECT *, SUM(aantal), SUM(verkoopprijs) FROM `verkochtproduct` WHERE product = "mario wonder"

SELECT *, SUM(aantal), SUM(verkoopprijs) FROM `verkochtproduct`;

SELECT *, SUM(aantal), SUM(verkoopprijs) FROM `verkochtproduct` GROUP BY product;




-- 2
SELECT count(*) aantalHuisdieren, eigennaarid FROM `huisdieren` GROUP by eigennaarid;