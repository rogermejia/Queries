/*MAESTRO DISTRIBUCION REFERENCE TABLE*/

USE TERMO8;
Drop table REF_POL_DISTR;
CREATE TABLE REF_POL_DISTR (
ID varchar(16) PRIMARY KEY,
PT_CM_GAB decimal(4,3),
PT_CM_TRA decimal(4,3),
PT_CM_TEL decimal(4,3),
PT_CM_PAJ decimal(4,3),
PT_CM_MIS decimal(4,3),
PT_CM_POL decimal(4,3),
PT_CM_PEL decimal(4,3),
PT_EF_MIS decimal(4,3),
PT_EF_PYT decimal(4,3),
PT_EF_TEX decimal(4,3),
PT_PP_GRA decimal(4,3),
PT_PP_ART decimal(4,3),
CREATION_DATE DATETIME2,
UPDATE_DATE DATETIME2,
ACTIVE bit DEFAULT 1
)
truncate table REF_POL_DISTR;
INSERT INTO REF_POL_DISTR VALUES ('CM01', 1, null, null, null, null, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM02', null, 1, null, null, null, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM03', null, null, 1, null, null, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM04', null, null, null, 1, null, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM05', null, null, null, null, 1, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM06', null, null, null, null, null, 1, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM20', 0.33, 0.33, null, null, 0.34, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM30', 0.5, 0.5, null, null, null, null, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('CM40', null, null, 0.5, null, null, 0.5, null, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('RE01', null, null, null, null, null, null, 1, null, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF01', null, null, null, null, null, null, null, 1, null, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF02', null, null, null, null, null, null, null, null, 1, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF03', null, null, null, null, null, null, null, null, null, 1, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF04', null, null, null, null, null, null, null, null, null, null, 0.5, 0.5, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF05', null, null, null, null, null, null, null, 0.33, 0.33, 0.34, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF20', null, null, null, null, null, null, null, 0.5, 0.5, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF30', null, null, null, null, null, null, null, 0.5, null, 0.5, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('EF40', null, null, null, null, null, null, null, null, null, null, 0.5, 0.5, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('GE20', 0.2, 0.2, 0.2, null, null, null, null, 0.2, 0.2, null, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('GE30', 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, null, null, SYSDATETIME(), null, 1);
INSERT INTO REF_POL_DISTR VALUES ('GE40', 0.2, 0.2, 0.2, null, null, null, null, 0.15, 0.15, 0.1, null, null, SYSDATETIME(), null, 1);
SELECT * FROM REF_POL_DISTR;