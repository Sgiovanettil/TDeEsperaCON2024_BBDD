DELETE FROM mydb.VALUE_SET T WHERE T.ID_TIPO_VALUE_SET = 5;
COMMIT;

DELETE FROM mydb.TIPO_VALUE_SET T WHERE T.ID_TIPO_VALUE_SET = 5;
COMMIT;

INSERT INTO mydb.TIPO_VALUE_SET(ID_TIPO_VALUE_SET, NOM_VALUE_SET, NOM_VALUE_SET_FHIR) VALUES(5, 'DERIVADO PARA', 'DERIVADO PARA');
COMMIT;

INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (668,5,REPLACE('  1', ' ', ''),'https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo','Confirmación');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (669,5,REPLACE('  2', ' ', ''),'https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo','Control Especialista');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (670,5,REPLACE('  3', ' ', ''),'https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo','Realiza Tratamiento');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (671,5,REPLACE('  4', ' ', ''),'https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo','Seguimiento');
INSERT INTO mydb.VALUE_SET(ID_VALOR, ID_TIPO_VALUE_SET, CODE, `SYSTEM`, DISPLAY) VALUES (672,5,REPLACE('  5', ' ', ''),'https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo','Otro');
COMMIT;