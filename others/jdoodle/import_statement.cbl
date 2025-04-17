      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-PROGRAM.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT OPTIONAL CALC-FILE
        ASSIGN TO "CALCSUM.cbl"
        ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD CALC-FILE.
       01 CALC-RECORD PIC X(80).

       WORKING-STORAGE SECTION.
       01 WS-NUM1 PIC 9(5) VALUE 12345.
       01 WS-NUM2 PIC 9(5) VALUE 67890.
       01 WS-RESULT PIC 9(6).
       01 WS-EOF PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       OPEN INPUT CALC-FILE
       PERFORM UNTIL WS-EOF = 'Y'
           READ CALC-FILE
              AT END
                MOVE 'Y' TO WS-EOF
              NOT AT END
                DISPLAY "NO CALC-RECORD"
           END-READ
       END-PERFORM
       CLOSE CALC-FILE

       CALL "CALCULATE-SUM" USING WS-NUM1 WS-NUM2 GIVING WS-RESULT
       DISPLAY "The sum of " WS-NUM1 " and " WS-NUM2 " is " WS-RESULT

       STOP RUN.
