      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FunctionExample.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RESULT PIC 9(4).

       PROCEDURE DIVISION.
       PERFORM ADD-NUMBERS THRU ADD-NUMBERS-END.
       DISPLAY 'Résultat: ' RESULT.
       STOP RUN.

       ADD-NUMBERS.
       COMPUTE RESULT = 10 + 20.
       ADD-NUMBERS-END.
       EXIT.
