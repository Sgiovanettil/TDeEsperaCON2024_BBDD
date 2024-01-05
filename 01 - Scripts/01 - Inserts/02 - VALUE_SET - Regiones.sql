DELETE FROM mydb.VALUE_SET T WHERE T.ID_TIPO_VALUE_SET = 2;
COMMIT;

DELETE FROM mydb.TIPO_VALUE_SET T WHERE T.ID_TIPO_VALUE_SET = 2;
COMMIT;

INSERT INTO mydb.TIPO_VALUE_SET(ID_TIPO_VALUE_SET, NOM_VALUE_SET, NOM_VALUE_SET_FHIR) VALUES(2, 'REGIONES', 'REGIONES');
COMMIT;

INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (250,2,REPLACE('  15', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Arica y Parinacota');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (251,2,REPLACE('  01', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Tarapacá');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (252,2,REPLACE('  02', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Antofagasta');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (253,2,REPLACE('  03', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Atacama');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (254,2,REPLACE('  04', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Coquimbo');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (255,2,REPLACE('  05', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Valparaíso');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (256,2,REPLACE('  13', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Metropolitana de Santiago');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (257,2,REPLACE('  06', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Del Libertador Gral. Bernardo O\'Higgins');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (258,2,REPLACE('  07', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Del Maule');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (259,2,REPLACE('  08', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Del Biobío');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (260,2,REPLACE('  09', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','De la Araucanía');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (261,2,REPLACE('  14', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','De los Ríos');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (262,2,REPLACE('  10', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','De los Lagos');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (263,2,REPLACE('  11', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Aysén del Gral. Carlos Ibáñez del Campo');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (264,2,REPLACE('  12', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Magallanes y de la Antártica Chilena');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (265,2,REPLACE('  16', ' ', ''),'https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL','Ñuble');
COMMIT;