      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATE-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT PIC 999.
       LINKAGE SECTION.
       01 LS-NUM1 PIC 99.
       01 LS-NUM2 PIC 99.

       PROCEDURE DIVISION USING LS-NUM1 LS-NUM2 RETURNING LS-RESULT.
       000-Main.
           COMPUTE LS-RESULT = LS-NUM1 + LS-NUM2.
           GOBACK.
       END PROGRAM CALCULATE-SUM.
