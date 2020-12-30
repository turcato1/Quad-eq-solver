REM Quadratic equation type ax2+bx+c = 0 solver
REM Author: Thiago Turcato do Rego

DIM A, B, C AS DOUBLE
DIM DELTA AS DOUBLE
DIM X1R, X2R, X1I, X2I AS DOUBLE
DIM X1ISIG AS STRING
DIM X2ISIG AS STRING

REM Program start
CLS
PRINT "Quadratic equation solver Ax2 + Bx + C = 0"
PRINT "Enter with equation constants:"

INPUT "A = ", A
INPUT "B = ", B
INPUT "C = ", C
DELTA = B * B - 4 * A * C

IF (DELTA >= 0) THEN
  X1R = (-B + SQR(DELTA)) / 2 * A
  X2R = (-B - SQR(DELTA)) / 2 * A
  PRINT "The roots are: "; X1R; " and "; X2R
ELSE
  DELTA = -DELTA
  X1I = SQR(DELTA) / 2 * A
  X2I = -SQR(DELTA) / 2 * A
  X1R = -B / 2 * A
  X2R = -B / 2 * A
 
  IF (X1I < 0) THEN
    X1ISIG = STR$(X1I)
  ELSE
    X1ISIG = "+" + STR$(X1I)
  END IF
 
  IF (X2I < 0) THEN
    X2ISIG = STR$(X2I)
  ELSE
    X2ISIG = "+" + STR$(X2I)
  END IF
 
  PRINT "The roots are complex: "; X1R; X2ISIG; "i"; " and "; X2R; X1ISIG; "i"
END IF
END

