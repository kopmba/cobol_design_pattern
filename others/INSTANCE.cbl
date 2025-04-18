      ******************************************************************
      * Author:kopmba
      * Date:18/04/2025
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSTANCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT.
           05 RES-PARENT.
               10 CLASSNAME-PARENT PIC X(44).
               10 CLASSNAME-CHILD PIC X(44).
           05 RES-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.
       LINKAGE SECTION.
       01 LS-PA PIC X(44).
       01 LS-C PIC X(44).
       01 LS-P.
           05 ARRAY-ELEMENT PIC X(80) OCCURS 5 TIMES.

       PROCEDURE DIVISION USING LS-PA LS-C LS-P RETURNING LS-RESULT.
       000-Main.
           DISPLAY LS-P
           MOVE LS-PA TO CLASSNAME-PARENT OF RES-PARENT OF LS-RESULT
           MOVE LS-C TO CLASSNAME-CHILD OF RES-PARENT OF LS-RESULT
           MOVE LS-P TO RES-PROPERTIES OF LS-RESULT
           DISPLAY LS-RESULT
           GOBACK.
       END PROGRAM INSTANCE.
