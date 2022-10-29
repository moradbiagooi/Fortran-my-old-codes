!Example program
PROGRAM INVERSE
IMPLICIT NONE
complex, ALLOCATABLE, DIMENSION(:,:) :: Matrix, invMatrix,matrix_test
INTEGER :: i, j, n, ErrorFlag
integer::i0,i1
real::s1,s2
complex::ii,itest
ii=(0.0,1.0)
PRINT*,"Enter size of square matrix"
!READ*,n
n=2
ALLOCATE(Matrix(n,n))
ALLOCATE(invMatrix(n,n))
ALLOCATE(Matrix_test(n,n))

!PRINT*,"Enter elements of matrix Row wise"

!DO i = 1, n
!READ*,(Matrix(i,j), j = 1, n)
!END DO
do i0=1,N
do i1=1,N
CALL RANDOM_NUMBER(s1)
CALL RANDOM_NUMBER(s2)
Matrix(i0,i1)=(s1+ii*s2)*10.
end do
end do
!-----------------------------------------------
CALL FindInv(Matrix, invMatrix, n, ErrorFlag)
Print*," "
Print*,"Matrix:"
Print*," "
DO i = 1, n
PRINT*,(Matrix(i,j), j = 1, n)
END DO
Print*," "
Print*,"Inverse Matrix:"
Print*," "
DO i = 1, n
PRINT*,(invMatrix(i,j), j = 1, n)
END DO

matrix_test=matmul(invMatrix,matrix)
print*,''
Print*,"Test "
Print*," "
DO i = 1, n
PRINT*,(Matrix_test(i,j), j = 1, n)
END DO


END PROGRAM INVERSE
!Subroutine comes here
