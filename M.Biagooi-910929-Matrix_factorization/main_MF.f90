! This program calculates the answers to a system of 
! equations for an example that its datas are given in
! The files: Sub_EnterMatrix1.f90 & Sub_EnterMatrix2.f90
! A is coefficient n*n matrix and B is n*1 .
! We solve this by the method Matrix Factorization.
! L is Down trianglar and U is up trianglar	 reduced form.
! AX=B
! A=LU
! LY=B
! UX=Y
! This code is written by Moraad Biagooi at 1391-09-29
! THe subroutine for Matrix Factorization Program
program Matrix_factorization
implicit none
integer::i0,j0,n
real::test
real,allocatable,dimension(:,:)::M_A,M_L,M_U
real,allocatable,dimension(:)::M_B,M_X,M_Y
print*,'-----------------------------------------------------------'
print*,' This program calculates the answers to a system of 	   '
print*,' equations for an example that its datas are given in	   '
print*,' The files: Sub_EnterMatrix1.f90 & Sub_EnterMatrix2.f90	   '
print*,' A is coefficient n*n matrix and B is n*1 .				   '
print*,' We solve this by the method Matrix Factorization.		   '
print*,' L is Down trianglar and U is up trianglar	 reduced form. '
print*,' AX=B													   '
print*,' A=LU													   '
print*,' LY=B													   '
print*,' UX=Y													   '
print*,'-----------------------------------------------------------'



n=4
allocate(M_A(n,n),M_L(n,n),M_U(n,n))
allocate(M_B(n),M_X(n),M_Y(n))
M_A=0.
M_L=0.
M_U=0.
M_B=0.
M_X=0.
M_Y=0.
do i0=1,n
M_L(i0,i0)=1.
end do
call sub_EnterMatrix1(n,M_A)
call sub_EnterMatrix2(n,M_B)
call sub_LU_Maker(n,M_A,M_U,M_L)

call sub_PressEnter()

print*,'A'
do i0=1,n
print*,M_A(i0,:)
end do
print*,''

call sub_PressEnter()

print*,'B'
print*,M_B
print*,''

call sub_PressEnter()

print*,'U'
do i0=1,n
print*,M_U(i0,:)
end do
print*,''

call sub_PressEnter()

print*,'L'
print*,''
do i0=1,n
print*,M_L(i0,:)
end do
print*,''

call sub_PressEnter()

call sub_Y_Maker(n,M_Y,M_B,M_L)

print*,'Y'
print*,m_y
print*,''

call sub_PressEnter()

print*,'           L*Y           B'
do i0=1,n
test=0.
do j0=1,n
test=test+M_L(i0,j0)*M_Y(j0)
end do
print*,test,m_b(i0)
end do
print*,''

call sub_PressEnter()

call sub_X_Maker(n,M_X,M_Y,M_U)

print*,'X'
print*,m_x
print*,''

call sub_PressEnter()

print*,'           U*X           Y'
do i0=1,n
test=0.
do j0=1,n
test=test+M_U(i0,j0)*M_X(j0)
end do
print*,test,m_y(i0)
end do
print*,''

call sub_PressEnter()

print*,'           A*X           B'
do i0=1,n
test=0.
do j0=1,n
test=test+M_a(i0,j0)*M_X(j0)
end do
print*,test,m_b(i0)
end do
print*,''
print*,' This code is written by Moraad Biagooi at 1391-09-29'
print*,' M.Biagooi@gmail.com'
print*,'Press Enter To End'
read(*,*)




end

!-----------------------------------------------





