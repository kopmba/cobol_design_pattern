      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PATH PIC X(100).
       01 SNAME PIC X(35).
       77 X PIC 99.
       77 Y PIC 99.
       77 Z PIC 99.
       01  EMPLOYEE.
           05 FULLNAME        PIC X(35).
           05 MAILING-ADDRESS.
               10 STREET        PIC X(35).
               10 CITY          PIC X(15).
               10 STATE         PIC X(2).
               10 ZIP-CODE.
                  15 ZIP-CODE-5 PIC 9(5).
                  15 FILLER     PIC X(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            SET X TO 10.
            SET Y TO 25.
            ADD X Y GIVING Z.
            DISPLAY "X + Y = "Z.
            DISPLAY "MODULE-PATH           = [" MODULE-PATH
            DISPLAY "MODULE-SOURCE         = [" MODULE-SOURCE
            MOVE MODULE-PATH TO PATH.
            INSPECT PATH REPLACING ALL "exe" BY "cbl".
            DISPLAY PATH
            MOVE 'John Doe' TO FULLNAME OF EMPLOYEE
            MOVE 'SYRACUSE' TO CITY OF MAILING-ADDRESS OF EMPLOYEE
            MOVE 'NY' TO STATE OF MAILING-ADDRESS OF EMPLOYEE
            MOVE FULLNAME OF EMPLOYEE TO SNAME
            DISPLAY "The name of employee =" SNAME
            DISPLAY EMPLOYEE
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
