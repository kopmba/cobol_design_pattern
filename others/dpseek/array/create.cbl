      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ArrayExample.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 99.
       01 MY-ARRAY.
       05 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.
       01 BUFFER-TABLE PIC X(100) OCCURS 10 TIMES.

       PROCEDURE DIVISION.
       MOVE 'Element1' TO ARRAY-ELEMENT(1).
       MOVE 'Element2' TO ARRAY-ELEMENT(2).
       DISPLAY 'Premier élément: ' ARRAY-ELEMENT(1).
       DISPLAY MY-ARRAY.
       MOVE MY-ARRAY TO BUFFER-TABLE(1).
       *> Iteration
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
       DISPLAY 'Element ' I ': ' ARRAY-ELEMENT(I)
       END-PERFORM.
       STOP RUN.
