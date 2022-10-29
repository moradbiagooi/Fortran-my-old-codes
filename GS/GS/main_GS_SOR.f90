! This program solves a system of equations by both
! Gauss-Seidel and SOR methods.
program GaussSeidel_SOR
implicit none
integer::i,j,n,itr
real::sum1,sum2,w,test,err,tol
real,allocatable,dimension(:,:)::A
real,allocatable,dimension(:)::B,X0,X1

print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*,' This program solves a system of equations:'
print*,'                          AX=B  '
print*,' by both Gauss-Seidel and SOR methods.'
print*,' The values of system of equations coefficients are'
print*,' in the files sub_EnterMatrix1.f90 and'
print*,' sub_EnterMatrix2.f90 '
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

call sub_PressEnter()
print*,'Enter maximum tolerance of convergence of answers in'
print*,'iterations: example tol=0.001'
read(*,*) tol
print*,'Enter weight constant for SOR method: example w=1.25'
read(*,*) w

n=4
allocate(A(n,n))
allocate(B(n),X0(n),X1(n))
A=0.
B=0.
!--------------------------------------------------------------
call sub_PressEnter()

call sub_EnterMatrix1(n,A)

call sub_PressEnter()

call sub_EnterMatrix2(n,B)

call sub_PressEnter()

call sub_GaussSeidel(A,B,X1,n,tol)

call sub_PressEnter()

call sub_SOR(A,B,X1,n,tol,w)

call sub_PressEnter()

print*,''
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*,' This code is written by Moraad Biagooi at 1391-10-11'
print*,' M.Biagooi@gmail.com'
print*,'Press Enter To End'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
read(*,*)

end



