      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-PROGRAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC 9(5) VALUE 12345.
       01 WS-NUM2 PIC 9(5) VALUE 67890.
       01 WS-RESULT PIC 9(6).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       CALL "CALCULATE-SUM" USING WS-NUM1 WS-NUM2 GIVING WS-RESULT
       DISPLAY "The sum of " WS-NUM1 " and " WS-NUM2 " is " WS-RESULT

       STOP RUN.
