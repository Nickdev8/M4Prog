SELECT tl.voornaam, tl.achternaam, t.teamnaam FROM teamlid tl JOIN team t ON tl.teamid = t.id;

SELECT tl.voornaam, tl.achternaam, t.teamnaam FROM teamlid tl JOIN team t ON tl.teamid = t.id WHERE t.teamnaam = 'poisonshroom';