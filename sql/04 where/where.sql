SELECT * FROM huisdieren WHERE leeftijd <=4;
SELECT * FROM huisdieren WHERE naam = 'bram';
SELECT * FROM huisdieren WHERE eigenaar = 'jesper';


SELECT * FROM huisdieren WHERE eigenaar = 'joep' AND leeftijd > 1;
SELECT * FROM huisdieren WHERE (eigenaar = 'joep' OR eigenaar = 'marije') AND leeftijd = 1;
SELECT * FROM huisdieren WHERE typedier = 'hamster' AND leeftijd = 1;
SELECT * FROM huisdieren WHERE typedier = 'hamster' AND eigenaar = 'marije' AND leeftijd > 1;