      ******************************************************************
      * Author:kopmba
      * Date:18/04/2025
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COLLECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LEN PIC 9(2).
       01 LS-RESULT.
           05 ELEMENT PIC X(80) OCCURS 5 TIMES.
       LINKAGE SECTION.
       01 LS-PROP.
           05 RES-PARENT.
               10 CLASSNAME-PARENT PIC X(44).
               10 CLASSNAME-CHILD PIC X(44).
               10 OBJECT-TYPE PIC X(44). *>A, N or I
           05 RES-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(80) OCCURS 5 TIMES.
       PROCEDURE DIVISION USING LS-PROP. *>RETURNING LS-RESULT.
       000-Main.
           CALL "ARRAY-LEN" USING LS-RESULT GIVING LEN
           MOVE LS-PROP TO ELEMENT(LEN + 1)
           STOP RUN.
       END PROGRAM COLLECT.
