insert into AFA(id, kulcs) values (1,0);
insert into AFA(id, kulcs) values (2,15);
insert into AFA(id, kulcs) values (3,20);

insert into Kategoria (id, nev, szulokategoria) values (1,'Játék',NULL);
insert into Kategoria (id, nev, szulokategoria) values (2,'Játszóház',NULL);
insert into Kategoria (id, nev, szulokategoria) values (3,'Bébijáték',1);
insert into Kategoria (id, nev, szulokategoria) values (4,'Építőjáték',1);
insert into Kategoria (id, nev, szulokategoria) values (5,'Fajáték',1);
insert into Kategoria (id, nev, szulokategoria) values (6,'Plüss figurák',1);
insert into Kategoria (id, nev, szulokategoria) values (7,'Közlekedési eszközök',1);
insert into Kategoria (id, nev, szulokategoria) values (8,'0-6 hónapos kor',3);
insert into Kategoria (id, nev, szulokategoria) values (9,'6-18 hónapos kor',3);
insert into Kategoria (id, nev, szulokategoria) values (10,'18-24 hónapos kor',3);
insert into Kategoria (id, nev, szulokategoria) values (11,'DUPLO',4);
insert into Kategoria (id, nev, szulokategoria) values (13,'LEGO',4);
insert into Kategoria (id, nev, szulokategoria) values (14,'Építő elemek',4);
insert into Kategoria (id, nev, szulokategoria) values (15,'Építő kockák',5);
insert into Kategoria (id, nev, szulokategoria) values (16,'Készségfejlesztő játékok',5);
insert into Kategoria (id, nev, szulokategoria) values (17,'Logikai játékok',5);
insert into Kategoria (id, nev, szulokategoria) values (18,'Ügyességi játékok',5);
insert into Kategoria (id, nev, szulokategoria) values (19,'Bébi taxik',7);
insert into Kategoria (id, nev, szulokategoria) values (20,'Motorok',7);
insert into Kategoria (id, nev, szulokategoria) values (21,'Triciklik',7);

insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (1,'Activity playgim',7488, 21, 3, 8);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (2,'Színes bébikönyv',1738, 58, 3, 8);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (3,'Zenélő bébitelefon',3725, 18, 3, 9);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (4,'Fisher Price kalapáló',8356, 58, 3, 10);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (5,'Mega Bloks 24 db-os',4325, 47, 3, 14);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (6,'Maxi Blocks 56 db-os',1854, 36, 3, 14);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (7,'Building Blocks 80 db-os',4362, 25, 3, 14);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (8,'Lego City kikötője',27563, 12, 3, 13);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (9,'Lego Duplo Ásógép',6399, 26, 3, 11);
insert into Termek (id, nev, nettoar,raktarkeszlet,afaid,kategoriaid) 
	values (10,'Egy óra gyerekfelügyelet',800, 0, 2, 2);

insert into Telephely (id, ir, varos, utca, tel, fax, vevoid)
	values (1,'1114','Budapest','Baranyai u. 16.','061-569-23-99',null,null);
insert into Telephely (id, ir, varos, utca, tel, fax, vevoid)
	values (2,'1051','Budapest','Hercegprímás u. 22.','061-457-11-03','061-457-11-04',null);
insert into Telephely (id, ir, varos, utca, tel, fax, vevoid)
	values (3,'3000','Hatvan','Vörösmarty tér. 5.','0646-319-169','0646-319-168',null);
insert into Telephely (id, ir, varos, utca, tel, fax, vevoid)
	values (4,'2045','Törökbálint','Határ u. 17.','0623-200-156','0623-200-155',null);

insert into Vevo (id, nev, szamlaszam,login, jelszo,email,KozpontiTelephely)
	values (1,'Puskás Norbert','16489665-05899845-10000038','pnorbert','huti9haj1s','puskasnorbert@freemail.hu',2);
update Telephely set vevoid =1 where id = 2;

insert into Vevo (id, nev, szamlaszam,login, jelszo,email,KozpontiTelephely)
	values (2,'Hajdú-Nagy Katalin','54255831-15615432-25015126','katinka','gandalf67j','hajdunagyk@hotmail.com',1);
update Telephely set vevoid =2 where id = 1;
update Telephely set vevoid =2 where id = 3;

insert into Vevo (id, nev, szamlaszam,login, jelszo,email,KozpontiTelephely)
	values (3,'Grosz János','25894467-12005362-59815126','jano','jag7guFs','janos.grosz@gmail.com',4);
update Telephely set vevoid =3 where id = 4;

insert into SzamlaKiallito (id, nev, IR, varos, utca, adoszam, szamlaszam)
	values (1,'Regio Játék Áruház Kft','1119','Budapest','Nándorfejérvári u. 23','15684995-2-32','259476332-15689799-10020065');
insert into SzamlaKiallito (id, nev, IR, varos, utca, adoszam, szamlaszam)
	values (2,'Regio Játék Áruház Zrt','1119','Budapest','Nándorfejérvári u. 23','68797867-1-32','259476332-15689799-10020065');

insert into statusz (id, nev) values (1,'Rögzítve');
insert into statusz (id, nev) values (2,'Várakozik');
insert into statusz (id, nev) values (3,'Csomagolva');
insert into statusz (id, nev) values (4,'Szállítás alatt');
insert into statusz (id, nev) values (5,'Kiszállítva');

insert into fizetesmod (id, mod, hatarido)
	values (1,'Készpénz',0);
insert into fizetesmod (id, mod, hatarido)
	values (2,'Átutalás 8',8);
insert into fizetesmod (id, mod, hatarido)
	values (3,'Átutalás 15',15);
insert into fizetesmod (id, mod, hatarido)
	values (4,'Átutalás 30',30);
insert into fizetesmod (id, mod, hatarido)
	values (5,'Kártya',0);
insert into fizetesmod (id, mod, hatarido)
	values (6,'Utánvét',0);

insert into megrendeles (id, datum, hatarido, telephelyid, statuszid, fizetesmodid)
	values (1,'2008-01-18','2008-01-30',3,5,1);
insert into megrendeles (id, datum, hatarido, telephelyid, statuszid, fizetesmodid)
	values (2,'2008-02-13','2008-02-15',2,5,2);
insert into megrendeles (id, datum, hatarido, telephelyid, statuszid, fizetesmodid)
	values (3,'2008-02-15','2008-02-20',1,2,1);
insert into megrendeles (id, datum, hatarido, telephelyid, statuszid, fizetesmodid)
	values (4,'2008-02-15','2008-02-20',2,3,5);

-- elso megrendeles
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (1,2,8356,1,4,5);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (2,1,1854,1,6,5);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (3,5,1738,1,2,5);
-- masodik megrendeles
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (4,2,7488,2,1,5);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (5,3,3725,2,3,5);
-- harmadik megrendeles
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (6,1,4362,3,7,3);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (7,6,1854,3,6,2);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (8,2,6399,3,9,3);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (9,5,1738,3,2,1);
--negyedik megrendeles
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (10,23,3725,4,3,3);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (11,12,1738,4,2,3);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (12,10,27563,4,8,3);
insert into MegrendelesTetel (id, mennyiseg, nettoar,megrendelesid,termekid,statuszid)
	values (13,25,7488,4,1,3);

insert into szamla (id, megrendelonev, megrendeloir,megrendelovaros,megrendeloutca,nyomtatottpeldanyszam,
					sztorno,fizetesimod,kiallitasdatum,teljesitesdatum,fizetesihatarido,kiallitoid,megrendelesid)
values (1,'Hajdú-Nagy Katalin','3000','Hatvan','Vörösmarty tér. 5.',2,0,'Készpénz','2008-01-30','2008-01-30','2008-01-30',1,1);

insert into szamla (id, megrendelonev, megrendeloir,megrendelovaros,megrendeloutca,nyomtatottpeldanyszam,
					sztorno,fizetesimod,kiallitasdatum,teljesitesdatum,fizetesihatarido,kiallitoid,megrendelesid)
values (2,'Puskás Norbert','1051','Budapest','Hercegprímás u. 22.',2,0,'Átutalás 8','2008-02-14','2008-02-15','2008-02-23',1,2);


insert into szamlatetel (id, nev, mennyiseg, nettoar, afakulcs,szamlaid, megrendelestetelid)
		values (1,'Fisher Price kalapáló',2,8356,20,1,1);


insert into szamlatetel (id, nev, mennyiseg, nettoar, afakulcs,szamlaid, megrendelestetelid)
		values (2,'Maxi Blocks 56 db-os',1,1854,20,1,2);


insert into szamlatetel (id, nev, mennyiseg, nettoar, afakulcs,szamlaid, megrendelestetelid)
		values (3,'Színes bébikönyv',5,1738,20,1,3);


insert into szamlatetel (id, nev, mennyiseg, nettoar, afakulcs,szamlaid, megrendelestetelid)
		values (4,'Activity playgim',2,7488,20,2,4);


insert into szamlatetel (id, nev, mennyiseg, nettoar, afakulcs,szamlaid, megrendelestetelid)
		values (5,'Zenélő bébitelefon',3,3725,20,2,5);
		
		
CREATE PROCEDURE FizetesModLetrehozasa(fmod VARCHAR(50), hatarido INTEGER)
   MODIFIES SQL DATA
   insert into fizetesmod (id, mod, hatarido) values (DEFAULT, fmod, hatarido);
