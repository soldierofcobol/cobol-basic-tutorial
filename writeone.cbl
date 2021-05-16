....+.*..1....+....2....+....3....+....4....+....5....+....6....+....7..
      *A   B

       id division.
          program-id. writeone.
          author. Soldier of COBOL.

       environment division.
         input-output section.
           file-control.
             select OUTFILE
                assign external   OUTFILE
                organization      line sequential
                file status       outfile-status.

       data division.
         file section.
           fd  OUTFILE
               data record        outfile-record
               record             varying.
           01  outfile-record.
               10  outrec-numb    pic 999999 value zeros.
               10  outrec-fill    pic x      value spaces.
               10  outrec-data    pic x(40)  value spaces.

         working-storage section.

           77  outfile-status  pic 99 value zeros.
           
       procedure division.
           display    'Hello COBOL'       upon console
           open       output              OUTFILE
           display    'Open FS is '       outfile-status
           move       1                   to outrec-numb
           move       spaces              to outrec-fill
           move       'Data for a record' to outrec-data
           write      outfile-record
           display    'Write FS is '      outfile-status
           close      OUTFILE
           display    'Close FS is '      outfile-status
           display    'Bye COBOL'         upon console
           stop run.

....+.*..1....+....2....+....3....+....4....+....5....+....6....+....7..
