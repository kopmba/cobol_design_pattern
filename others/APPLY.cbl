      ******************************************************************
      * Author:kopmba
      * Date:18/04/2025
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. APPLY.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *>01 RESULT PIC X(44). *> Suivant LS-RESULT on retourne la fonction correspondante à optimiser
       01 RESULT.
           05 STR PIC x(100).
           05 NUM PIC 9(9).
       01 LEN PIC 99.
       01 FNAME PIC X(80).
       LINKAGE SECTION.
       01 LS-OBJ.
           05 RES-PARENT.
               10 CLASSNAME-PARENT PIC X(44).
               10 CLASSNAME-CHILD PIC X(44).
               10 OBJECT-TYPE PIC X(44). *>A, N or I
           05 RES-PROPERTIES.
               10 ARRAY-ELEMENT PIC X(10) OCCURS 5 TIMES.
       01 LS-METHOD-NAME PIC x(50).
       01 LS-APPLY PIC x(1) value 'N'.
       01 LS-RES.
           05 STR PIC x(100).
           05 NUM PIC 9(9).
           05 NUL PIC X(10) VALUE NULL.

       PROCEDURE DIVISION USING LS-OBJ LS-METHOD-NAME LS-APPLY. *>LS-RES.
       000-Main.
            IF LS-APPLY = 'N'
               CALL LS-METHOD-NAME USING LS-OBJ
            END-IF.

            IF LS-APPLY = 'A' OR LS-APPLY = 'I'
               MOVE CLASSNAME-PARENT OF RES-PARENT OF LS-OBJ TO FNAME
               MOVE CONCATENATE(LOWER-CASE(FNAME), ".cbl") TO FNAME
               CALL "CHECK-METHOD" USING LS-METHOD-NAME FNAME GIVING LEN
               IF LEN > 0
                   CALL LS-METHOD-NAME USING LS-OBJ
               ELSE
                   DISPLAY "The method does not exist in parent class"
                   DISPLAY "Unable to create an instance"
               END-IF
            END-IF.

            STOP RUN.
       END PROGRAM APPLY.
