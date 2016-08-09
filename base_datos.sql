drop database apply_for;
 
CREATE DATABASE apply_for;

USE apply_for;

CREATE TABLE IF NOT EXISTS `administradores` (
  `idAdmin` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `tipo` smallint(6) NOT NULL,
  `nomidAdmin` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `apPatA` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `apMatA` varchar(15) COLLATE utf16_spanish_ci NOT NULL,
  `licProA` varchar(6) COLLATE utf16_spanish_ci NOT NULL,
  `UserA` varchar(35) COLLATE utf16_spanish_ci NOT NULL,
  `contras` varchar(30) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- select * from administradores where UserA='TereS';
-- select * from usuarios natural join profesores where usuario='Mirna';
-- select idProf from profesores where correoP='4040';
-- select matricula from profesores natural join usuarios where usuario='Mirna';

CREATE TABLE IF NOT EXISTS `profesores` (
  `matricula` varchar(20) NOT NULL DEFAULT '',
  `ApPat` varchar(50) DEFAULT NULL,
  `ApMat` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `licenciatura` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `usuarios` (
  `matricula` varchar(20) NOT NULL DEFAULT '',
  `usuario` varchar(50) DEFAULT NULL,
  `contraseha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Materiales(
    id_Material varchar (10),
    Nombre_material varchar (70),
    tipo varchar (10),
	PRIMARY KEY(id_Material));
    
CREATE TABLE Pedidos(
    id_Pedido int auto_increment,
    id_usuario varchar(10),
    id_Material varchar(10),
    Cantidad int, 
    caracteristicas text,
    primary key(Id_Pedido, id_usuario, id_Material));
    
    --
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdmin`);
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`matricula`);
--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`matricula`);

ALTER TABLE `usuarios`
ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `profesores` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `administradores` (`idAdmin`, `tipo`, `nomidAdmin`, `apPatA`, `apMatA`, `licProA`, `UserA`, `contras`) VALUES
('0404', 1, 'Teresita', 'Santiago', 'Garcia', 'LICINF', 'TereS', 'santiago');

insert into profesores values('4040','Jiménez','Canseco','Mirna Cecilia', 'Lic. Informática','maestro');
    
insert into usuarios values('4040','Mirna','canseco');

insert into profesores values('5050','Pacheco','Antonio','Everardo de Jesús', 'Lic. Informática','maestro');
    
insert into usuarios values('5050','Everardo','pacheco');

insert into Materiales values('1','Hojas blancas tamaño carta','Pieza');
insert into Materiales values('2','Folders tamaño carta','Pieza');
insert into Materiales values('3','Folders tamaño oficio','Pieza');
insert into Materiales values('4','Libreta profecional de rayas','Pieza');
insert into Materiales values('5','Libreta profecional de cuadros','Pieza');
insert into Materiales values('6','Libreta tipo francesa','Pieza');
insert into Materiales values('7','Sobre amarillo doble carta','Pieza');
insert into Materiales values('8','Sobre amarillo carta','Pieza');
insert into Materiales values('9','Sobres amarillos oficio','Pieza');
insert into Materiales values('10','Protector de hojas','Pieza');
insert into Materiales values('11','Marcadores para pizarrón','Pieza');
insert into Materiales values('12','Marcadores para pizarrón aulas "F"','Pieza');
insert into Materiales values('13','Hojas opalina gruesas','Pieza');
insert into Materiales values('14','Sujeta documentos chico','Caja');
insert into Materiales values('15','Sujeta documentos medianos','Caja');
insert into Materiales values('16','Bolígrafo punto fino tinta azul','Pieza');
insert into Materiales values('17','Bolígrafo punto fino tinta negra','Pieza');
insert into Materiales values('18','Bolígrafo punto fino tinta roja','Pieza');
insert into Materiales values('19','Tijeras','Pieza');
insert into Materiales values('20','Borrador para pizarrón con estuche','Piza');
insert into Materiales values('21','Blok de hojas cuadriculadas','Pieza');
insert into Materiales values('22','Sacapuntas','Pieza');
insert into Materiales values('23','Clips número 1','Caja');
insert into Materiales values('24','Clips número 2','Caja');
insert into Materiales values('25','DVDs','Pieza');
insert into Materiales values('26','Marca textos color amarillo','Pieza');
insert into Materiales values('27','Marca textos color averde','Pieza');
insert into Materiales values('28','Marca textos color rosa','Pieza');
insert into Materiales values('29','Goma de migajón','Piezas');
insert into Materiales values('30','kola loka','Pieza');
insert into Materiales values('31','Revistero','Pieza');
insert into Materiales values('32','Bicolor','Pieza');
insert into Materiales values('33','Lapiz','Pieza');
insert into Materiales values('34','Postic','Pieza');
insert into Materiales values('35','Pliegos de papel bond','Pieza');
insert into Materiales values('36','Corrector líquido','Pieza');
insert into Materiales values('37','CDs','Pieza');
insert into Materiales values('38','Cajas de archivo permanete tañano carta','Pieza');
insert into Materiales values('39','Plumín punto fino de aceite','Pieza');
insert into Materiales values('40','papel contc','Pieza');
insert into Materiales values('41','Tarjetas blancas de 3x5','Caja');
insert into Materiales values('42','Tarjetas blancas de 5x8','Caja');
insert into Materiales values('43','Pilas triple "A"','Pieza');
insert into Materiales values('44','Ligas','Pieza');
insert into Materiales values('45','Tinta para sello color azul','Pieza');
insert into Materiales values('46','Engrapadora','Pieza');


select * from Materiales;

-- drop table Pedidos;

select * from Pedidos;

select * from administradores;
select * from profesores;
