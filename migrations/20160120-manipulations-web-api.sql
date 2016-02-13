

UPDATE `ttc_erembodegem`.`speler` SET `LinkKaartSporta`='7126' WHERE  `ID`=78;
update reeks set frenoyteamid=0, frenoydivisionid=0 where frenoyteamid is null;

UPDATE `ttc_erembodegem`.`speler` SET `Toegang`=1 WHERE  `ID`=85;

DELETE FROM `ttc_erembodegem`.`verslagspeler`;

update club set Naam='Sint Niklase' where Naam='Sint Niklase vzw';
update club set Naam='Meteor' where Naam='Meteor Oudenaarde';
update club set Naam='Wielsbeke' where Naam='Wielsbeke TTC';
update club set Naam='Sterke Stut' where Naam='Sterke Stut Oosterzele';
update club set Naam='Wetteren' where Naam='De Orchidee Wetteren';
update club set Naam='Buggenhout' where Naam='Eendracht Buggenhout';
update club set Naam='Atelia Gent' where Naam='Atelia Gent vzw';
update club set Naam='Denderleeuw' where Naam='Denderleeuw 2001';


delete from kalender where id in (1508, 1499);

drop table training;
drop table klassement;
drop table spelerweek;

delete from verslag where kalenderid in (126, 264, 322, 340, 717, 916, 1711);


-- should no longer return rows:
-- select kalenderid from verslag group by kalenderid having count(0)>1;