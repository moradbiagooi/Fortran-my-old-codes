
! This program solves Heat Dispersion equation by
! Crank-Nicolson method solved By Matrix Factorization (or LU) Method.

! ===============================================
! =Crank-Nicolson= Method
! -----------------------------------------------
! u_t=c^2u_xx
!------------------------------------------------
! i=2: ...+ru(1,j+1)=c1
! i=p: 2(1-r)u(p,j)+ru(p+1,j)+ru(p-1,j)
! i=n-1:...+ru(n,j+1)=c2
! -----------------------------------------------
! i=2  :  2(1+r)    -r        0          0
! i=p  :  0         -r      2(1+r)      -r    
! i=n-1:  0                  -r        2(1+r)
! -----------------------------------------------
! r=(c^2)k/(h^2)
! -----------------------------------------------

program CN_LU_HD ! Crank-Nicolson By Matrix Factorization (or LU) Method for Heat Dispersion
implicit none
real,allocatable,dimension(:,:)::M_A,M_L,m_U
real,allocatable,dimension(:)::M_X,M_Y,M_B
integer::k0,k1
real::test
real::c1,c2
integer::i0,j0,m,n,ff
real::h,k,x0,x1,t0,t1,xx
real::c,r,pi
! ----------------------------------
! -------------Some DATAS-----------
! ----------------------------------
pi=3.141592
x0=0.
x1=1.
t0=0.
t1=0.1
h=0.1
k=0.01

c=1.
r=(c**2.)*k/(h**2.)

m=int((x1-x0)/h)
n=int((t1-t0)/k)

c1=0.
c2=0.
allocate(M_A(1:m,1:n))
allocate(M_L(1:m,1:n),m_U(1:m,1:n))
allocate(M_X(1:m),M_Y(1:m),M_B(1:m))
M_A=0.0
M_X=0.0
M_B=0.0
M_Y=0.0
M_L=0.0
m_U=0.0
! ----------------------------------
! ----------------------------------
! ----------------------------------
print*, ''
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*, ' This program solves Heat Dispersion equation by'
print*, ' Crank-Nicolson method solved By Matrix Factorization    '
print*, ' (or LU) Method.'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
call sub_PressEnter()
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*, ' The used parameters and initial and boundary conditions '
print*, ' are typed bellow'
print*, ''
print*, ' U_t=(c^2)U_xx   Heat Dispersion equation'
print*, '' 
print*, ' 0<x<1'
print*, ' 0<t<0.1'
print*, ' U(x,0)=f(x)=sin(Pi*x)+sin(3*Pi*x)  '
print*, ' U(0,t)=0 '
print*, ' U(1,t)=0 '
print*, ' dx=h=0.1 '
print*, ' dt=k=0.01'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
call sub_PressEnter()

! ----------------------------------
! --------Calculation Begans--------
! ----------------------------------


open(100,file='CN_LU_HD.txt')

call sub_X0_Maker_CN(m,M_X,x0,h,c1,c2)

print*,' '
print*,'===X==='
write(100,'(1X,20(1X,F6.3))') M_X(:)
write(*,'(1X,20(1X,F6.3))') M_X(:)

call sub_PressEnter()



call sub_A_Maker_CN(m,M_A,r)

print*,' '
print*,'===a==='
do i0=1,m
write(*,'(1X,20(1X,F6.3))') M_A(i0,:)
end do
print*,'Shape A=',shape(M_A)

call sub_PressEnter()

call sub_LU_Maker(n,M_A,M_U,M_L)


print*,'===L==='
do i0=1,m
write(*,'(1X,20(1X,F6.3))') M_L(i0,:)
end do

call sub_PressEnter()

print*,'===U==='
do i0=1,m
write(*,'(1X,20(1X,F6.3))') M_U(i0,:)
end do

call sub_PressEnter()



do k0=1,n


call sub_B_Maker_CN(m,M_B,M_X,r,C1,C2)

print*,' '
print*,'===B=='
write(*,'(1X,20(1X,F6.3))') M_B(:)


call sub_Y_Maker(n,M_Y,M_B,M_L)

print*,' '
print*,'===Y==='
write(*,'(1X,20(1X,F6.3))') M_Y(:)


call sub_X_Maker(n,M_X,M_Y,M_U)

print*,' '
print*,'===X==='
write(100,'(1X,20(1X,F6.3))') M_X(:)
write(*,'(1X,20(1X,F6.3))') M_X(:)


end do
close(100)
print*,''
print*,' The result is also printed in the file: CN_LU_HD.txt '
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
print*,' This code is written by Moraad Biagooi at 1391-10-11'
print*,' M.Biagooi@gmail.com'
print*,'Press Enter To End'
print*,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
read(*,*)

end 
