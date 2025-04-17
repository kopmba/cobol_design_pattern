      ******************************************************************
      * Author: kopmba
      * Date: 04:17:2025
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
       01 LS-PARENT PIC X(44).
       01 LS-CHILD.
           05 CNAME PIC X(44).
           05 LS-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.

       PROCEDURE DIVISION USING LS-PARENT LS-CHILD RETURNING LS-RESULT.
       000-Main.
           MOVE LS-PARENT TO CLASSNAME-PARENT OF RES-PARENT OF LS-RESULT
           MOVE CNAME OF LS-CHILD TO CLASSNAME-CHILD OF RES-PARENT
           MOVE LS-PROPERTIES OF LS-CHILD TO RES-PROPERTIES OF LS-RESULT
           GOBACK.
       END PROGRAM INSTANCE.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. COLLECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 LS-RESULT.
           05 ELEMENT PIC X(44) OCCURS 15 TIMES.
       LINKAGE SECTION.
       01 LS-PROP.
           05 RES-PARENT.
               10 CLASSNAME-PARENT PIC X(44).
               10 CLASSNAME-CHILD PIC X(44).
           05 RES-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.
       PROCEDURE DIVISION USING LS-PROP RETURNING LS-RESULT.
       000-Main.
            MOVE LS-PROP TO ELEMENT(1)
            STOP RUN.
       END PROGRAM COLLECT.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. APPLY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 RESULT PIC X(44). *> Suivant LS-RESULT on retourne la fonction correspondante à optimiser
       LINKAGE SECTION.
       01 LS-OBJ.
           05 RES-PARENT.
               10 CLASSNAME-PARENT PIC X(44).
               10 CLASSNAME-CHILD PIC X(44).
           05 RES-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.
       01 LS-METHOD-NAME PIC x(50).
       01 LS-APPLY-CASE PIC x(1) value 'N'.
       *> A for abstract, N for simple inherit, I for interface where A & I depend of check-method and checker
       PROCEDURE DIVISION USING LS-OBJ LS-METHOD-NAME LS-APPLY-CASE.
       000-Main.
            IF LS-APPLY-CASE = 'N'
               CALL LS-METHOD-NAME USING LS-OBJ
            END-IF.
            STOP RUN.
       END PROGRAM APPLY.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Check-Method.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            *>DISPLAY "Verifie si la methode du parent existe à la creation de l'instance"
            STOP RUN.
       END PROGRAM Check-Method.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Checker.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Evalue le store et verifie si la fonction existe"
            STOP RUN.
       END PROGRAM Checker.
