USE TERMO8;

DECLARE 
    @CUENTA VARCHAR(15),
	@NOM VARCHAR(25);

DECLARE LOOP_CALC_DISTR CURSOR FOR 

  SELECT CUENTA, NOM_CUENTA FROM REF_MA_HABER GROUP BY NOM_CUENTA, CUENTA;

OPEN LOOP_CALC_DISTR;

FETCH FROM LOOP_CALC_DISTR INTO @CUENTA, @NOM;

WHILE @@FETCH_STATUS = 0

BEGIN

SELECT TOP 10 P.INV_MAT_GL_ACCT_ID, P.COMPANIA, P.DISTRIBUCION, P.RIESGO,

	(P.RIESGO * (
	
/**/	 
SELECT M.PERC FROM REF_MA_DISTR M WHERE M.DISTRIBUCION = 'CM20' 
 AND M.ID = (7) 
 AND ACTIVE = 1
 /**/
	)) AS PT_CM_GAB

  FROM PIVOT_REP_DISTRIB P;


FETCH NEXT FROM LOOP_CALC_DISTR INTO @CUENTA, @NOM;
END

CLOSE LOOP_CALC_DISTR;
 
DEALLOCATE LOOP_CALC_DISTR;


/*-------------------------------------------------------------------------------------*/

DECLARE 
    @ID VARCHAR(25);

DECLARE LOOP_CALC_DISTR CURSOR FOR 

  SELECT ID FROM REF_MA_DISTR WHERE DISTRIBUCION = 'CM20';

OPEN LOOP_CALC_DISTR;

FETCH FROM LOOP_CALC_DISTR INTO @ID;

WHILE @@FETCH_STATUS = 0

BEGIN

SELECT M.PERC FROM REF_MA_DISTR M WHERE M.DISTRIBUCION ='CM20' 
AND M.ID = (@ID) 
 AND ACTIVE = 1;


FETCH NEXT FROM LOOP_CALC_DISTR INTO @ID;
END

CLOSE LOOP_CALC_DISTR;
 
DEALLOCATE LOOP_CALC_DISTR;