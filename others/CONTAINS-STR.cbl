      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTAINS-STR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT PIC 9(2).
       01 I PIC 9(2).
       01 FOUND PIC x(10) VALUE 'N'.
       01 STR-LENGTH PIC 99.
       LINKAGE SECTION.
       01 LS-STR PIC X(1024).
       01 LS-SEARCH PIC X(10).

       PROCEDURE DIVISION USING LS-STR LS-SEARCH RETURNING LS-RESULT.
       000-Main.
           INSPECT LS-STR
               TALLYING STR-LENGTH FOR ALL LS-SEARCH

           SET STR-LENGTH TO LS-RESULT
           GOBACK.
       END PROGRAM CONTAINS-STR.
