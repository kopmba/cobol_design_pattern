      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIND-INDEX.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT PIC 9(2).
       01 I PIC 9(2).
       01 FOUND-INDEX PIC 9(2) VALUE 0.
       LINKAGE SECTION.
       01 LS-ARR.
           05 ARRAY-ELEMENT PIC X(80) OCCURS 5 TIMES.
       01 LS-SEARCH PIC X(10).

       PROCEDURE DIVISION USING LS-ARR LS-SEARCH RETURNING LS-RESULT.
       000-Main.
           *> Recherche de l'index
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF ARRAY-ELEMENT(I) = LS-SEARCH
                   MOVE I TO FOUND-INDEX
                   EXIT PERFORM
               END-IF
           END-PERFORM.
           GOBACK.
       END PROGRAM FIND-INDEX.
