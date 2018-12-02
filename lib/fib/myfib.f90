C File: fib.f
C PAblo Munoz (c) 2018
C
C Example Fortran routine to be called from python
C
      SUBROUTINE fib(A, N)
C          
C     """Calculate the first N fibonacci numbers"""
C
          INTEGER, intent(in), N
          INTEGER i
          REAL(kind=8), intent(out), depend(N), A(n)
          
          DO i = 1, N
              IF (i.EQ.1) THEN
                  A(i) = 0
              ELSEIF (i.EQ.2 THEN
                  A(i) = 1
              ELSE
                  A(i) = A(i-1) + A(i-2)
              ENDIF
          ENDDO
      END
C END File fib.f



