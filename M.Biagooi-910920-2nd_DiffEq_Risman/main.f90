!
! This code is written by Moraad Biagooi at 1391-09-20
! This program calculates the propagation of a mechanical wave in time.
! We suppose that we have a string with differential equation as bellow.
!         (d^2/dt^2) U(x,t)=r^2 (d^2/dx^2) U(x,t)
! Then we calculate its evolution in time.
! 
program main_Risman

implicit none
integer::i0,m,n
real::h,k
real::r	,x0

real,allocatable,dimension(:,:):: u	 ! Griding u(x,t)
real,allocatable,dimension(:):: x_	 ! Griding x coordinate


call sub_inputData(m,n,h,k,r,x0)  ! Inputting Data

allocate(u(0:m,0:n))
allocate(x_(0:m))

do i0=0,m
x_(i0)=i0*h+x0	  ! Calculation of grid of x coordinate
end do


call sub_initialCondition (m,n,u,x_,k,r)   ! Calculation initial condition of grid u(x,t)
call sub_calculation(m,n,u,r)              ! Calculation of the evolution of u(x,t)
call sub_writeData(m,n,u)	               ! Writing data in screen and in file 


end program

