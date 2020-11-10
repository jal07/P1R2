use proyecto1;

CREATE TABLE R_Hash
(
IdHasd int primary key not null,
Descripcion varchar (100),
Tipo Varchar (25),
Espacio int,
Otro varchar (50)
);

CREATE TABLE Firma
(
idHasd int primary key not null,
nombre varchar (100),
hexadigest varchar (300),
ip varchar(100)
);

CREATE TABLE Trazabilidad
(
idTrazabilidad int primary key not null,
estado varchar (100),
hexadigest varchar (300),
ip varchar(100)
);

select *
from Firma;

select *
from Trazabilidad;

INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (1,"F1", "df12015efabd4f6f867c428a2179c10f", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (2,"F2", "96364393584887e19ec15d0d5790e5df", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (3,"F3", "790f66c4aaa1df5d5cf5a95d67da96ab", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (4,"F4", "3304a1af018f2369a418073ce1269268", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (5,"F5", "c187a8bae29ea1984387e17b1df454b1", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (6,"F6", "87fdf40cebd7fa4e26313f7082a5faa1", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (7,"F7", "d348a5bed78b41246dba26ff8de83576", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (8,"F8", "21efe36e797b349731092746b30decac", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (9,"F9", "986f285581ee223448cae69dca919606", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (10,"F10", "bcfdae13beec925cee9615fce9863e17", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (11,"F11", "f4d7ccab662f4f6ce51d3161de92713a", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (12,"F12", "0df2e90d12988c2f0dce41dadb0a766f", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (13,"F13", "875f5ed15c6e04e1c7f07dd51c35ead8", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (14,"F14", "81f49aaedf9b1a611f6e7542dfaa4483", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (15,"F15", "66a8ef4d91a870588c7c0ca16d45015b", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (16,"F16", "fcaf84c72666c164d71b4bd2699674e6", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (17,"F17", "eaea93f1b1e3655e297a0e2a3fed8bbb", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (18,"F18", "ae15805a5ffb43bb920080d9dde2311b", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (19,"F19", "24d17ea53d2713a0fc4dd4da2b6bbf0a", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (20,"F20", "5dc2b9291d6c2c2ffc124716e5cdb55d", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (21,"F21", "3f9052e508268b1fa38ff077f52b61ef", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (22,"F22", "ebe2a9ae4cf738ef86faaeabeaf1fdf3", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (23,"F23", "7ddef1bfe6626cacd957ca3e6d96d041", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (24,"F24", "ca6fc8d99e0e045bf71b3e85b2d767c3", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (25,"F25", "bde9cbc446a20c8f957ad2adb1e88f00", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (26,"F26", "11749e9d14b376cfa150fceee15e9324", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (27,"F27", "64b090bd113099cd0e8f06f41a952c03", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (28,"F28", "fcff74ba827cdac1113c2d4ff1b5e31e", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (29,"F29", "906812f2316d1482bbe21a57e76055bc", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (30,"F30", "127bcf7340d641ee9bf100493f7dc8eb", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (31,"F31", "db7d9ef6fadd3e8855610d51576bebf3", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (32,"F32", "2b0840db5af979288bccfcb937e684c5", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (33,"F33", "4f6e94efb2f2c1dcaeffcb2defb88216", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (34,"F34", "5b1992117ec676070180682dd085e3e0", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (35,"F35", "e734d182b198be737a5c74f675e9857a", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (36,"F36", "739ebc270078e6f8e46a15fc28f74591", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (37,"F37", "ae8a7233c19f4dc7870a8d244fa4c484", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (38,"F38", "2aec669dfd263d4d891b02b00358295e", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (39,"F39", "60195ae510b7bd762c4bba10bf918703", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (40,"F40", "424efae61f477020938be90caac88e64", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (41,"F41", "ace6818538bb3ca68634f3c17ec6ab92", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (42,"F42", "a590143ae96ac937c1545401242df884", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (43,"F43", "f9487b356064df3317d0aaf137a72cd8", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (44,"F44", "5701110849e90dfb16d2e5d5056ff6da", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (45,"F45", "96c5070e8c2ab1a31b00d9f195c54800", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (46,"F46", "fcbbe79b52ff85c69020483526cfc45e", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (47,"F47", "6e1e30b28eec5f58f12cae72104cd59d", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (48,"F48", "bd54c20d13b58723e18293a551d1613a", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (49,"F49", "61e88256534ca021566ed664fa8a91b6", "192.168.100.3");
INSERT INTO Firma (idHasd, nombre, hexadigest, ip) VALUES (50,"F50", "c35cdd5dd5cefa9cd3f75bbc9c02f2ed", "192.168.100.3");


INSERT INTO Trazabilidad (idTrazabilidad, estado, hexadigest, ip) VALUES (1,"Peligroso", "df12015efabd4f6f867c428a2179c10f", "192.168.100.3");
INSERT INTO Trazabilidad (idTrazabilidad, estado, hexadigest, ip) VALUES (2,"Peligroso", "96364393584887e19ec15d0d5790e5df", "192.168.100.3");
INSERT INTO Trazabilidad (idTrazabilidad, estado, hexadigest, ip) VALUES (3,"Peligroso", "790f66c4aaa1df5d5cf5a95d67da96ab", "192.168.100.3");