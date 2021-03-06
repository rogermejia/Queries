/****** Script for SelectTopNRows command from SSMS  ******/

/*SELECT * FROM PIVOT_REP_DISTRIB;
SELECT SUM(RIESGO) FROM PIVOT_REP_DISTRIB;
SELECT * FROM PIVOT_REP_CUENTAS;*/


USE TERMO8;
Drop table REF_MA_HABER;
CREATE TABLE REF_MA_HABER (
ID varchar(16) PRIMARY KEY,
DESCRIPCION varchar(50),
CUENTA varchar(60),
NOM_CUENTA varchar(60),
CREATION_DATE DATETIME2,
UPDATE_DATE DATETIME2,
ACTIVE bit DEFAULT 1
)

truncate table REF_MA_HABER;
INSERT INTO REF_MA_HABER VALUES ('11050101', 'RESINAS DE POLIETILENO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050102', 'PIGMENTOS Y ADITIVOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050103', 'TINTAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050104', 'SOLVENTES', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050105', 'MATERIALES PARA LAMINACION', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050106', 'PELICULAS DE POLIPROPILENO CAST', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050107', 'PELICULAS DE POLIESTER', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050108', 'PELICULAS DE POLIPROPILENO BOPP', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050109', 'MATERIALES PARA ARTES GRAFICAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050110', 'INSUMOS Y ACCESORIOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050111', 'RESINAS PELETIZADAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050112', 'TINTAS DILUIDAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050113', 'MATERIALES DE SOBRE EMPAQUE', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050114', 'PRODUCTO PARA CLASIFICADO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050115', 'INSUMOS DE PRODUCCION', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050116', 'SCRAP CLASIFICADO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050117', 'PELICULAS DE ALUMINIO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050118', 'MATERIALES DE SEGURIDAD', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050119', 'MATERIALES INDIRECTOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060301', 'PAPELERIA Y UTILES ', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060302', 'COMBUSTIBLES', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060303', 'ENSERES PARA LIMPIEZA', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);

INSERT INTO REF_MA_HABER VALUES ('1201020701', 'REPUESTOS PROPIOS', '1201030306', 'REPUESTOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1201020702', 'REPUESTOS ', '1201030306', 'REPUESTOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503030101', 'REPUESTOS-MANTENIMIENTOS', '1201030306', 'REPUESTOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503020301', 'ST-EF-TEX', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010101', 'MP-ST CM-HD', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010201', 'MP-ST CM-TRANSPARENTE', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010501', 'MP-ST MISCELANEOS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503020101', 'MP-ST EF MISC', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010301', 'MP-ST CM-TELA LLUVIA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010401', 'MP-ST CM-PAJILLAS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503020201', 'MP-ST PELICULAS Y TUBOS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504030101', 'MP-PT ARTES', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105070101', 'DESECHABLES', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010101', 'PT-CM-GAB', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010201', 'PT-CM-TRA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010301', 'PT-CM-TEL', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010401', 'PT-CM-PAJ', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010501', 'PT-CM-MIS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010601', 'PT-CM-POL', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020101', 'PT-EF-MIS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020201', 'PT-EF-PYT', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020301', 'PT-EF-TEX', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504030201', 'PT-PP-GRA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504050101', 'TE-OPV', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
/*INSERT INTO REF_MA_HABER VALUES ('110504050101', 'MP OTROS PRODUCTOS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);*/
INSERT INTO REF_MA_HABER VALUES ('1105060101', 'PT SERVICIOS PARA LA VENTA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105060102', 'PT DISTRIBUCION DE TERCEROS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105060103', 'PT OTROS PRODUCTOS PARA LA VENTA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105060104', 'INVENTARIO DE ACCESORIOS DE TERMOEXPORT', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105060105', 'ACCESORIOS ENTREGADOS A PROVEEDORES', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105060106', 'ACCESORIOS AVERIADOS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);

sELECT * FROM REF_MA_HABER;

/*INSERT INTO REF_MA_HABER VALUES ('11050101', 'RESINAS DE POLIETILENO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050102', 'PIGMENTOS Y ADITIVOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050103', 'TINTAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050104', 'SOLVENTES', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050105', 'MATERIALES PARA LAMINACION', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050106', 'PELICULAS DE POLIPROPILENO CAST', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050107', 'PELICULAS DE POLIESTER', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050108', 'PELICULAS DE POLIPROPILENO BOPP', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050109', 'MATERIALES PARA ARTES GRAFICAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050110', 'INSUMOS Y ACCESORIOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050111', 'RESINAS PELETIZADAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050112', 'TINTAS DILUIDAS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050113', 'MATERIALES DE SOBRE EMPAQUE', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050114', 'PRODUCTO PARA CLASIFICADO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050115', 'INSUMOS DE PRODUCCION', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050116', 'SCRAP CLASIFICADO', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050118', 'MATERIALES DE SEGURIDAD', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11050119', 'MATERIALES INDIRECTOS', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060301', 'PAPELERIA Y UTILES ', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060302', 'COMBUSTIBLES', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('11060303', 'ENSERES PARA LIMPIEZA', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1105070101', 'DESECHABLES', '11050101R', 'MATERIA PRIMAS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1201020701', 'REPUESTOS PROPIOS', '1201030306', 'REPUESTOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('1201020702', NULL, '1201030306', 'REPUESTOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503020301', 'ST-EF-TEX', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010101', NULL, '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010201', NULL, '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503010501', NULL, '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110503020101', NULL, '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010101', 'PT-CM-GAB', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010201', 'PT-CM-TRA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010301', 'PT-CM-TEL', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010401', 'PT-CM-PAJ', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010501', 'PT-CM-MIS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504010601', 'PT-CM-POL', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020101', 'PT-EF-MIS', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020201', 'PT-EF-PYT', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504020301', 'PT-EF-TEX', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504030201', 'PT-PP-GRA', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);
INSERT INTO REF_MA_HABER VALUES ('110504050101', 'TE-OPV', '11050102R', 'PRODUCTOS TERMINADOS', SYSDATETIME(), null, 1);*/



/*sELECT * FROM [PIVOT_REP_HABER];

CREATE TABLE [PIVOT_REP_HABER] (
ID int IDENTITY(1,1) PRIMARY KEY,
NOM_CUENTA varchar(40),
CUENTA varchar(15),
VALORES decimal(16,6)
)*/

