use MPA;
/*----------------------------------------------*/
insert into Usuario values 
(1, 'Norton', 'Cullie', 'Ohrtmann', 'Abyss', 'cabyss0@columbia.edu', 'oLV22NFu6o', '320 666 7834',25,201,302,404),
(2, 'Thurston', 'Humbert', 'Jankovsky', 'Howsego', 'hhowsego1@nationalgeographic.com', '9rNTLtG', '774 544 6031',24,202,301,404),
(3, 'Valli', 'Julietta', 'McCooke', 'Hannent', 'jhannent2@home.pl', 'khKgFT1SmTP', '937 322 4856',30,203,301,401),
(4, 'Waylon', 'Saul', 'Botterman', 'Giorgini', 'sgiorgini3@hexun.com', 'qe0ZA4aa', '653 690 8343',36,204,301,401),
(5, 'Allison', 'Lilli', 'Stoter', 'Dulieu', 'ldulieu4@smugmug.com', 'Weryfijp', '519 505 8674',20,201,301,402),
(6, 'Lynn', 'Morgan', 'Giamelli', 'Dagleas', 'mdagleas5@furl.net', 'n7S4uydBrTm', '313 291 7526',26,202,301,402),
(7, 'Katrina', 'Lyn', 'McFee', 'Luddy', 'lluddy6@nydailynews.com', 'R7F0adrzQo', '651 100 0656',54,203,301,403),
(8, 'Niccolo', 'Fredrika', 'Quinnell', 'Steed', 'fsteed7@networkadvertising.org', 'zJkTARwiOY', '179 779 7779',45,204,301,403),
(9, 'Nanni', 'Pen', 'Knotte', 'Juschka', 'pjuschka8@umich.edu', '8tD0slMB87H', '534 846 7043',32,201,301,405),
(10, 'Boniface', 'Perri', 'Blaney', 'Skippon', 'pskippon9@ocn.ne.jp', 'F6YV2nbWt7G', '569 146 7741',56,202,301,405),
(11, 'Carmelle', 'Hamel', 'Sigg', 'Robatham', 'hrobathama@youku.com', 'FhjtzWHLC', '703 233 4444',24,203,301,406),
(12, 'Cybill', 'Nert', 'Ivshin', 'Lambourne', 'nlambourneb@latimes.com', 'INyKpFCsg', '330 441 3656',54,204,301,406),
(13, 'Ansell', 'Elly', 'McFadyen', 'Enoksson', 'eenokssonc@mail.ru', 'EqPsTor', '811 538 0295',48,201,301,407),
(14, 'Ivette', 'Yetta', 'Leahy', 'Folomkin', 'yfolomkind@w3.org', '4Qti1GOIumk', '817 676 2619',45,202,301,407),
(15, 'Penny', 'Sheff', 'Louys', 'Jouhning', 'sjouhninge@jiathis.com', 'X9b36s', '903 729 7168',25,203,301,408),
(16, 'Jessie', 'Asia', 'O''Garmen', 'Luetkemeyer', 'aluetkemeyerf@admin.ch', 'hyb2BKySjam', '788 283 5907',56,204,301,408),
(17, 'Caleb', 'Dominique', 'Whitaker', 'Proschke', 'dproschkeg@umich.edu', 'hnC42Z', '903 486 9236',24,201,301,409),
(18, 'Sim', 'Garik', 'Brimilcombe', 'McCleary', 'gmcclearyh@npr.org', '4yJ7C5RhDZi', '451 723 7747',25,202,301,409),
(19, 'Rosabel', 'Konstantine', 'Haps', 'Pren', 'kpreni@devhub.com', 'XnzDVhXmbMJ', '468 987 4803',37,203,301,410),
(20, 'Alfie', 'Sibbie', 'O''Deoran', 'Skett', 'sskettj@businessinsider.com', 'uXw1S7vjp38', '155 204 9750',29,204,301,410);
/*----------------------------------------------*/
insert into Tipo_de_Documento values 
(201, 'C.C', 'Cedula de Ciudadania'),
(202,'C.E','Cedula Extranjeria'),
(203,'T.I','Tarjeta de Identidad'),
(204,'P.A','Pasaporte');
/*----------------------------------------------*/
insert into rol values 
(301, 'Usuarios'), 
(302, 'Administrador');
/*----------------------------------------------*/
insert into Ciudad values 
(401,'Bogotá'),
(402,'Medellín'),
(403,'Barranquilla'),
(404,'Cartagena'),
(405,'Cúcuta'),
(406,'Soledad'),
(407,'Ibagué'),
(408,'Cali'),
(409,'Bucaramanga'),
(410,'Soacha');
/*----------------------------------------------*/
insert into Dirección values
(501,'Calle 90A #8 - 15 ',110221,5),
(502,'Carrera 111 C Bis # 79 Bis - 25',111011,1),
(503,'Carrera 19 # 49 - 3',050014,10),
(504,'Calle 47D # 66B - 41',050031,15),
(505,'Carrera 21 # 39 - 10',080006,2),
(506,'Carrera 15 # 68 - 21',080016,8),
(507,'Transversal 53 # 30 - 10',130011,12),
(508,'Calle 31 #15 - 05',130014,4),
(509,'Avenida Aeropuerto # 7 - 08',540002,3),
(510,'Avenida Los Libertad # 7 - 10',540003,19),
(511,'Carrera 25 # 30 - 09',083003,11),
(512,'Carrera 14 con Avenida Murillo',083005,6),
(513,'Calle 70 # 5 - 20',730003,17),
(514,'Carrera 5 # 6 - 11',730006,14),
(515,'Calle 7 Norte #52 - 16',760002,20),
(516,'Carrera 7 # 44 - 10',760010,18),
(517,'Calle 99 # 27 - 20',680004,7),
(518,'Calle 11 # 24 - 02',680011,13),
(519,'Transversal 7 # 37 - 15',250052,16),
(520,'Calle 3 # 35 - 02',250054,9);
/*----------------------------------------------*/
insert into Factura values 
(601,'2019-05-15','5',5,11,203),
(602,'2018-10-20','12',12,9,201),
(603,'2019-05-16','6',6,3,203),
(604,'2018-11-02','1',1,18,202),
(605,'2019-01-25','8',8,5,201),
(606,'2019-02-19','4',4,16,204),
(607,'2019-03-05','2',2,7,203),
(608,'2019-06-14','11',11,8,204),
(609,'2019-03-23','5',5,2,202),
(610,'2019-02-13','1',1,10,202),
(611,'2019-06-03','3',3,1,201),
(612,'2019-04-18','7',7,12,204),
(613,'2019-11-29','8',8,17,201),
(614,'2019-02-21','4',4,14,202),
(615,'2018-12-04','7',7,15,203),
(616,'2019-03-17','10',10,6,202),
(617,'2019-05-24','3',3,13,201),
(618,'2019-02-01','6',6,4,204),
(619,'2019-06-22','2',2,19,203),
(620,'2019-04-10','9',9,20,204);
/*----------------------------------------------*/
insert into Envio values 
(701,'Urbano',611),
(7011,'Urbano',605),
(702,'Nacional',601),
(7021,'Nacional',603),
(7022,'Nacional',604),
(7023,'Nacional',607),
(7024,'Nacional',608),
(7025,'Nacional',609),
(7026,'Nacional',610),
(7027,'Nacional',612),
(7028,'Nacional',613),
(7029,'Nacional',614),
(70210,'Nacional',615),
(70211,'Nacional',616),
(70212,'Nacional',617),
(70213,'Nacional',618),
(70214,'Nacional',619),
(70215,'Nacional',620),
(70316,'Intermunicipal',606),
(7031,'Intermunicipal',602);
/*----------------------------------------------*/
insert into Tarjeta_de_Credito values
(801, 'Norton Ohrtmann', '4917104109201008', '2021-12-27', '546',605),
(802, 'Thurston Jankovsky', '201732510161545', '2020-01-26', '475',610),
(803, 'Valli McCooke', '3555589534930701', '2021-05-30', '458',606),
(804, 'Ernst Dansey', '5048371540159041', '2020-02-24', '254',612),
(805, 'Mei O'' Sullivan', '3543944915019233', '2022-09-14', '450',607),
(806, 'Waylon Botterman', '633413721479158552', '2021-01-20', '474',614),
(807, 'Lavina Hubach', '3538859018960884', '2022-06-14', '752',608),
(808, 'Nichole Bidgood', '5602228890022518', '2021-06-02', '427',616),
(809, 'Allison Lilli Stoter Dulieu', '3535995230014838', '2021-02-06', '487',609),
(810, 'Cristionna Doust', '4405995596239008', '2019-08-24', '256',601);
/*--------------------------------------------------------------*/
insert into Tarjeta_de_Debito values (
901,'Bancolombia','Ahorros','Cristian Florez Cepeda','46451321354894653','2025-12-06',602),
(902,'Colpatria','Ahorros','Paola Cortes','8794651325647945245','2020-02-28',611),
(903,'Banco Caja Social','Ahorros','Nanni Knotte','6546513546513545','2019-09-15',603),
(904,'AvVillas','Ahorros','Fredy Stiven Rosales Carrera','7496531245673154','2023-10-21',613),
(905,'Bancolombia', 'Corriente','Penny Louys', '4569872316544523', '2024-04-25',604),
(906,'Davivienda','Ahorros','Fabian Vargas','7986453124567465','2020-03-03',615),
(907,'Citibank','Ahorros','','6512687946513274','2021-05-15',618),
(908,'Bancolombia','Ahorros','Asia Garmen Luetkemeyer','7845123456879844','2024-04-24',617),
(909,'Colpatria','Ahorros','Garik Brimilcombe McCleary','8976451324568797','2022-02-12',620),
(910,'Davivienda','Ahorros','Konstantine Haps Pren','132456514765378','2023-03-03',619);
/*--------------------------------------------------------------*/
insert into Producto values 
(1001,'Mouse Gamer','Mouse para Gamer','20','102000','',1210,1107),
(1002,'Teclado','Teclado USB','15','39900','',1201,1101),
(1003,'USB','Diseño animales','25','20000','',1206,1106),
(1004,'Audifonos','Diseño Personalizado, On Ear','40','40000','',1211,1106),
(1005,'Camara','Sticker personalizado para camara','23','832000','',1211,1105),
(1006,'Mouse','Conexion Inalambrica','20','19900','',1203,1102),
(1007,'USB','Diseño Empresarial','45','22000','',1206,1106),
(1008,'Gamepad','Alambrico','10','260000','',1208,1107),
(1009,'Teclado','Teclado conexion inalambrica','15','23000','',1203,1101),
(1010,'Pad Mouse','Diseño personalizado','10','15000','',1204,1102),
(1011,'Pantalla','"19 Pantalla plana','10','650000','',1207,1103),
(1012,'Impresora','Inyeccion de tinta','17','399000','',1201,1103),
(1013,'Parlantes','5w','10','149900','',1211,1104),
(1014,'Camara Instantanea','Color azul o Rosa','10','600000','',1207,1105);
/*--------------------------------------------------------------*/
insert into Categoria values 
(1101,'Teclado'),
(1102,'Mouse'),
(1103,'Perifericos'),
(1104,'Sonido'),
(1105,'Camaras'),
(1106,'Varios'),
(1107,'Zona Gamer');
/*--------------------------------------------------------------*/
insert into Marca values 
(1201,'HP'),
(1202,'Compaq'),
(1203,'Genius'),
(1204,'Lenovo'),
(1205,'Asus'),
(1206,'Kingston'),
(1207,'LG'),
(1208,'MSI'),
(1209,'Dell'),
(1210,'Acer'),
(1211,'Sony');
/*--------------------------------------------------------------*/
insert into detalle_Factura values
(1001,610),
(1002,618),
(1003,602),
(1004,615),
(1005,611),
(1006,603),
(1007,620),
(1008,613),
(1009,601),
(1010,614),
(1011,605),
(1012,616),
(1013,604),
(1014,615);