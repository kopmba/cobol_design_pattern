      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ReplaceString.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MY-STRING PIC X(20) VALUE 'HELLO WORLD OWORLD'.
       01 OLD-STR PIC X(5) VALUE 'WORLD'.
       01 NEW-STR PIC X(5) VALUE 'COBOL'.
       01 STRING-LENGTH PIC 9(2) VALUE 11.
       01 I PIC 9(2).

       PROCEDURE DIVISION.
       *> Recherche et remplacement
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > STRING-LENGTH
       IF MY-STRING(I:5) = OLD-STR
           MOVE NEW-STR TO MY-STRING(I:5)
           EXIT PERFORM
       END-IF
       END-PERFORM.
       INSPECT MY-STRING REPLACING ALL "WORLD" BY "COBOL".
       DISPLAY MY-STRING
       *> Affichage du résultat
       DISPLAY 'Chaîne modifiée: ' MY-STRING.
       STOP RUN.
