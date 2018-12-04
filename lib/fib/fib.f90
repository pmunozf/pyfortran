C File: fib.f90
C
C Pablo Munoz (c) 2018
C
C Example fortran routine to be wrapped
C

        SUBROUTINE fib(A,N)
C       """Calculate the first N fibonacci numbers."""

            INTEGER N
            REAL(kind=8) A(N)
Cf2py       intent(in) n
Cf2py       intent(out) a
Cf2py       depend(n) a
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


        SUBROUTINE matmul(A, B, C, M1, N1M2, N2)
C       """Matrix product."""

            INTEGER(kind=4), intent(in) :: M1, N2, N1M2
            REAL(kind=8), dimension(M1, N1M2), intent(in) :: A
            REAL(kind=8), dimension(N1M2, N2), intent(in) :: B
            REAL(kind=8), dimension(M1, N2), intent(out) :: C
            
            INTEGER :: i, j, k
            C = 0

            DO k = 1, N1M2
              DO J = 1, N2
                  DO i = 1, M1
                      C(i, j) = C(i, j) + A(i, k) * B(k, j)
                  ENDDO
              ENDDO
            ENDDO
        END


        SUBROUTINE transpose(A, B, N1, N2)
C       """Matrix transposition."""

            INTEGER(kind=4), intent(in) :: N1, N2
            REAL(kind=8), dimension(N1, N2), intent(in)  :: A
            REAL(kind=8), dimension(N2, N1), intent(out) :: B

            INTEGER :: i, j
            B = 0

            DO i = 1, N1
                DO j = 1, N2
                    B(j, i) = A(i, j)
                ENDDO
            ENDDO
        END



C END FILE fib.f90
