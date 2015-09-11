INSERT INTO `ttc_erembodegem`.`parameter` (`sleutel`, `value`, `omschrijving`) 
VALUES ('Frenoy_ClubId', 'OLV134', 'Frenoy ClubId');

INSERT INTO `ttc_erembodegem`.`parameter` (`sleutel`, `value`, `omschrijving`) 
VALUES ('Frenoy_SeasonId', '16', 'Huidig Frenoy seizoen');

ALTER TABLE `reeks`
	ADD COLUMN `FrenoyTeamId` VARCHAR(10) NULL AFTER `LinkID`,
	ADD COLUMN `FrenoyDivisionId` INT NULL AFTER `FrenoyTeamId`;

ALTER TABLE `kalender`
	ADD COLUMN `FrenoyMatchId` VARCHAR(20) NULL AFTER `GeleideTraining`;

INSERT INTO `club` (`ID`, `Naam`, `CodeVTTL`, `Website`)
VALUES (66, 'TTC Het Netje Over Gent', 'OVL102', 'http://www.hetnetjeover.be/');

INSERT INTO `clublokaal` (`ClubID`, `Lokaal`, `Adres`, `Gemeente`, `Postcode`, `Telefoon`)
VALUES (66, 'Odisee', 'Gebroeders Desmetstraat, 1', 'Gent', 9000, '0477/51 27 56');

