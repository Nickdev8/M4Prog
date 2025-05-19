SELECT * from kleren where kleur = "zwart" OR kleur = "blauw";
SELECT * from kleren where kleur = "zwart" OR kleur = "wit";
SELECT * from kleren where kledingtype = "broeken" OR kledingtype = "tshirts";


SELECT * from kleren where kledingtype = "broeken" AND kleur = "zwart" or kleur = "wit";
SELECT * from kleren where kledingtype = "broeken" AND kledingtype = "overhemden" or kleur = "zwart" or kleur = "wit";
SELECT * from kleren where kledingtype = "tshirts" AND kledingtype = "overhemden" or kleur = "rood" or kleur = "blauw";

SELECT * FROM huisdieren WHERE leeftijd <= 10 AND eigenaar IN ('jesper', 'joep');