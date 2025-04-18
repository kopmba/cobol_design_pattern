      ******************************************************************
      * Author:kopmba
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-PROGRAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 OPARENT.
           05 CLASSNAME PIC X(35) VALUE "Animal".
       01 OCHILD.
           05 CLASSNAME PIC X(35) VALUE "Cat".
           05 CNAME PIC X(35) VALUE "TOM".
           05 AGE PIC 99 VALUE 1.
       01 MY-ARRAY.
           05 ELEMENT PIC X(80) OCCURS 5 TIMES.
       01 RESULT USAGE IS POINTER.
       01 LEN PIC 9(2).
       01 FOUND PIC 9(2).
       01 STR PIC X(95) VALUE "Ce Cobol est difficile à manoeuvrer!".
       01 FNAME PIC X(80) VALUE "APPLY.cbl".
       01 FUNNAME PIC X(44) VALUE "PROCEDURE DIVISION".
       01 RES PIC X(44).
       01 COLLECTION.
           05 C-ELEMENT PIC X(80) OCCURS 5 TIMES.
       PROCEDURE DIVISION.
       DISPLAY "Starting main program"
       MOVE CNAME OF OCHILD TO ELEMENT(1)
       MOVE AGE OF OCHILD TO ELEMENT(2)

       CALL "INSTANCE" USING OPARENT OCHILD MY-ARRAY GIVING RESULT

       DISPLAY "The result is: " RESULT

       CALL "ARRAY-LEN" USING MY-ARRAY GIVING LEN

       DISPLAY "The len of MY-ARRAY is: "LEN

       CALL "FIND-INDEX" USING MY-ARRAY CNAME OF OCHILD GIVING FOUND
       DISPLAY "THe index found is: "FOUND

       CALL "CONTAINS-STR" USING STR "Cobol" GIVING LEN
       If LEN > 0
           DISPLAY "Cobol existe dans le texte : " STR
       ELSE
           DISPLAY "La taille < 0"

       CALL "COLLECT" USING RESULT

       CALL "CHECK-METHOD" USING FUNNAME FNAME

       STOP RUN.
