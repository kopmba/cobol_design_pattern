      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAY-LEN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT PIC 9(2).
       01 I PIC 9(2).
       01 LEN PIC 9(2) VALUE 0.
       01 SEARCH-VALUE PIC X(10) VALUE " ".
       LINKAGE SECTION.
       01 LS-ARR.
           05 ARRAY-ELEMENT PIC X(80) OCCURS 5 TIMES.

       PROCEDURE DIVISION USING LS-ARR RETURNING LS-RESULT.
       000-Main.
           *> Recherche de l'index
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF ARRAY-ELEMENT(I) = SEARCH-VALUE
                   DISPLAY "value of I="I " ELEMENT="ARRAY-ELEMENT(I)
                   EXIT PERFORM
               ELSE
                  DISPLAY "value of I="I " ELEMENT="ARRAY-ELEMENT(I)
                  COMPUTE LEN = LEN + I
                  SET LEN TO LS-RESULT
               END-IF
           END-PERFORM.
           GOBACK.
       END PROGRAM ARRAY-LEN.
