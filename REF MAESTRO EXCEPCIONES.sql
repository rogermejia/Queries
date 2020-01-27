USE TERMO8;
Drop table REF_EXEP_RIESGO;
CREATE TABLE REF_EXEP_RIESGO (
ID INT PRIMARY KEY,
MP varchar(16),
DESCRP varchar(50),
D30 decimal(4,3),
D60 decimal(4,3),
D90 decimal(4,3),
D120 decimal(4,3),
D150 decimal(4,3),
D180 decimal(4,3),
D210 decimal(4,3),
D240 decimal(4,3),
D270 decimal(4,3),
D360 decimal(4,3),
D360PLUS decimal(4,3),
CREATION_DATE DATETIME2,
UPDATE_DATE DATETIME2,
ACTIVE bit DEFAULT 1
)

INSERT INTO REF_EXEP_RIESGO VALUES (1, 'SUN', 'SUN-CHEMICAL', 0, 0, 0, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 1, SYSDATETIME(), null, 1);
INSERT INTO REF_EXEP_RIESGO VALUES (2, 'TIPIND', 'TIP-TOP INDUSTRIAL', 0, 0, 0, 0, 0.4, 0.4, 0.8, 0.8, 1, 1, 1, SYSDATETIME(), null, 1);
INSERT INTO REF_EXEP_RIESGO VALUES (3, 'TIPIND', 'CARGIL', 0, 0, 0, 0, 0.4, 0.4, 0.8, 0.8, 1, 1, 1, SYSDATETIME(), null, 1);

UPDATE REF_EXEP_RIESGO SET MP = 'SUN' WHERE ID = 1;
UPDATE REF_EXEP_RIESGO SET MP = 'TIPIND' WHERE ID = 2;
UPDATE REF_EXEP_RIESGO SET MP = 'CARGIL' WHERE ID = 3;

SELECT * FROM REF_EXEP_RIESGO;