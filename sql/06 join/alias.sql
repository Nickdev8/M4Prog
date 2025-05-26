
-- 01
Select naam, leeftijd,sum(leeftijd) as leeftijdtotaal from huisdieren
Select naam, leeftijd from huisdieren as pets
Select naam, typedier from huisdieren as pets

-- 02
SELECT hobby.hobbyid,hobby,id,naam FROM hobby join persoon on persoon.hobbyid = hobby.hobbyid;