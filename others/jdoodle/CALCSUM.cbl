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
       01 NUM1 PIC 99 VALUE 10.
       01 NUM2 PIC 99 VALUE 20.
       01 RESULT PIC 999.

       PROCEDURE DIVISION.
       DISPLAY "Starting main program"

       CALL "CALCULATE-SUM" USING NUM1 NUM2 GIVING RESULT

       DISPLAY "The sum is: " RESULT

       STOP RUN.
