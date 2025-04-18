      ******************************************************************
      * Author:kopmba
      * Date:18/04/2025
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHECK-METHOD.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT MY-FILE ASSIGN TO FNAME
       ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD MY-FILE.
       01 FILE-RECORD PIC X(80).
       WORKING-STORAGE SECTION.
       01 WS-EOF PIC X(1) VALUE 'N'.
       01 LS-RES PIC X(44).
       01 FNAME PIC X(80).
       01 LEN PIC 99.
       LINKAGE SECTION.
       01 LS-METHOD PIC X(44).
       01 LS-FILENAME PIC X(80).
       PROCEDURE DIVISION USING LS-METHOD LS-FILENAME.
       MAIN-PROCEDURE.
           MOVE LS-FILENAME TO FNAME
            *>DISPLAY "Verifie si la methode du parent existe à la creation de l'instance"
           OPEN INPUT MY-FILE.
           PERFORM UNTIL WS-EOF = 'Y'
               READ MY-FILE INTO FILE-RECORD
                   *>DISPLAY FILE-RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF
                       DISPLAY "File Readed successfully"
                   NOT AT END
                       CALL "CONTAINS-STR" USING LS-METHOD GIVING LEN
                       IF LEN > 0
                           MOVE 'Y' TO WS-EOF
                           DISPLAY "The method " LS-METHOD " exists!"
                       END-IF
               END-READ
           END-PERFORM.
           STOP RUN.
       END PROGRAM CHECK-METHOD.
