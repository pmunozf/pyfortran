C File: fib.f90
C
C Pablo Munoz (c) 2018
C
C Example fortran routine to be wrapped
C

      SUBROUTINE fib(A,N)
C     """Calculate the first N fibonacci numbers."""

          INTEGER N
          REAL(kind=8) A(N)
Cf2py     intent(in) n
Cf2py     intent(out) a
Cf2py     depend(n) a
          DO I=1,N
             IF (I.EQ.1) THEN
                A(I) = 0.0D0
             ELSEIF (I.EQ.2) THEN
                A(I) = 1.0D0
             ELSE 
                A(I) = A(I-1) + A(I-2)
             ENDIF
          ENDDO
      END
C END FILE fib.f90
