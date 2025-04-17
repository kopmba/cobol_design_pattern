      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ConcatArrays.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ARRAY1.
       05 ELEMENT1 PIC X(10) OCCURS 3 TIMES.
       01 ARRAY2.
       05 ELEMENT2 PIC X(10) OCCURS 2 TIMES.
       01 CONCAT-ARRAY.
       05 ELEMENT3 PIC X(10) OCCURS 5 TIMES.
       01 I PIC 9(2) VALUE 1.
       01 J PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
       *> Initialisation des tableaux
       MOVE 'A' TO ELEMENT1(1).
       MOVE 'B' TO ELEMENT1(2).
       MOVE 'C' TO ELEMENT1(3).
       MOVE 'D' TO ELEMENT2(1).
       MOVE 'E' TO ELEMENT2(2).

       *> Concaténation
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
       MOVE ELEMENT1(I) TO ELEMENT3(I)
       END-PERFORM.
       PERFORM VARYING J FROM 1 BY 1 UNTIL J > 2
       MOVE ELEMENT2(J) TO ELEMENT3(I)
       ADD 1 TO I
       END-PERFORM.

       *> Affichage du résultat
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
       DISPLAY 'Element ' I ': ' ELEMENT3(I)
       END-PERFORM.
       STOP RUN.
