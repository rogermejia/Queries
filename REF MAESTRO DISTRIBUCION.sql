USE TERMO8;
Drop table REF_POL_DISTR;
CREATE TABLE REF_POL_DISTR (
ID varchar(16) PRIMARY KEY,
PT_CM_GAB decimal(3,2),
PT_CM_TRA decimal(3,2),
PT_CM_TEL decimal(3,2),
PT_CM_PAJ decimal(3,2),
PT_CM_MIS decimal(3,2),
PT_CM_POL decimal(3,2),
PT_CM_PEL decimal(3,2),
PT_EF_MIS decimal(3,2),
PT_EF_PYT decimal(3,2),
PT_EF_TEX decimal(3,2),
PT_PP_GRA decimal(3,2),
PT_PP_ART decimal(3,2)
)

INSERT INTO REF_POL_DISTR VALUES ('CM01', 1, null, null, null, null, null, null, null, null, null, null, null), ('CM02', null, 1, null, null, null, null, null, null, null, null, null, null), 
('CM03', null, null, 1, null, null, null, null, null, null, null, null, null), ('CM04', null, null, null, 1, null, null, null, null, null, null, null, null), 
('CM05', null, null, null, null, 1, null, null, null, null, null, null, null), ('CM06', null, null, null, null, null, 1, null, null, null, null, null, null), 
('CM20', 0.33, 0.33, null, null, 0.34, null, null, null, null, null, null, null), ('CM30', 0.5, 0.5, null, null, null, null, null, null, null, null, null, null), 
('CM40', null, null, 0.5, null, null, 0.5, null, null, null, null, null, null), ('RE01', null, null, null, null, null, null, 1, null, null, null, null, null), 
('EF01', null, null, null, null, null, null, null, 1, null, null, null, null), ('EF02', null, null, null, null, null, null, null, null, 1, null, null, null), 
('EF03', null, null, null, null, null, null, null, null, null, 1, null, null), ('EF04', null, null, null, null, null, null, null, null, null, null, 0.5, 0.5), 
('EF05', null, null, null, null, null, null, null, 0.33, 0.33, 0.34, null, null), ('EF20', null, null, null, null, null, null, null, 0.5, 0.5, null, null, null), 
('EF30', null, null, null, null, null, null, null, 0.5, null, 0.5, null, null), ('EF40', null, null, null, null, null, null, null, null, null, null, 0.5, 0.5), 
('GE20', 0.2, 0.2, 0.2, null, null, null, null, 0.2, 0.2, null, null, null), ('GE30', 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, null, null), 
('GE40', 0.2, 0.2, 0.2, null, null, null, null, 0.15, 0.15, 0.1, null, null)

SELECT * FROM REF_POL_DISTR
