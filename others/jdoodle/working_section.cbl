      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-COUNTER PIC 99.
       01 WS-NUM PIC 9(5) VALUE 12345.
       01 WS-NAME PIC X(20) VALUE "John Doe".
       01 WS-PRICE PIC 9(5)V99 VALUE 123.45.
       01 WS-EOF PIC X VALUE 'N'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"

            IF WS-NUM > 100
               DISPLAY "Number is greater than 100"
            ELSE
               DISPLAY "Number is 100 or less"
            END-IF.

            *>MOVE "Sally Pearl" TO WS-NAME

            REPLACE LEADING ==Doe== BY ==Pearl==.

            DISPLAY WS-NAME

            DISPLAY WS-NAME

           PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 5
               DISPLAY WS-COUNTER
            END-PERFORM.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
