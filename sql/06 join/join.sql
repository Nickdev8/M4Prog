SELECT * FROM `telefoonGesprek` T JOIN klant K on T.klantid = K.klantid;


SELECT gesprekStart,gesprekEind,gesprekNaarTelefoonnummer,K.klantid,naam,leeftijd,telefoonnummer FROM `telefoonGesprek` T JOIN klant K on T.klantid = K.klantid;