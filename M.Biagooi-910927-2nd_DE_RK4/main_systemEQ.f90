! -----------------------------------------------------------------
! This program solves a system of two 1st
! order differential equations numerically
! with 4th order Runge-Kutta method .
! We change x''+4x'+5x=0 into a system of eqs.:
!  (d/dt)x = y
!  (d/dt)y = -4y-5x
! with y(0)=-5 , x(0)=3  in t=[0,5] , h=0.1
! The analytic answer is
! x(t)=	3exp(-2t)cos(t)+exp(-2t)sin(t)
! This code is written by Moraad Biagooi
! -----------------------------------------------------------------
program diff_eq_system
implicit none
integer::m,k
real*8::h,t_a,t_b
real*8,allocatable,dimension(:)::t,y,x
! -----------------------------------------------------------------
print*,''
print*,' ----------------------------------------------------------'
print*,' This program solves a system of two 1st'
print*,' order differential equations numerically '
print*,' with 4th order Runge-Kutta method .		'
print*," We change x''+4x'+5x=0 into a system of eqs.:"
print*,' (d/dt)x = y							'
print*,' (d/dt)y = -4y-5x						'
print*,' with y(0)=-5 , x(0)=3  in t=[0,5] , dt=0.1	'
print*,' The analytic answer is					'
print*,' x(t)=	3exp(-2t)cos(t)+exp(-2t)sin(t)	'
print*,' ----------------------------------------------------------' 
! ----------------------------------------------------------------- 
print*,''
print*,' Enter the differential of t :'
read*,h
! Boundary conditions
t_a=0. 
t_b=5.
m=int((t_b-t_a)/h)
allocate(x(0:m),y(0:m),t(0:m))		! allocate matrix for x,x' and t
x=0.
y=0.
t=0.
x(0)=3.
y(0)=-5.
t(0)=t_a
print*,' with bellow Boundary conditions:'
print*,'x(0)=',x(0)
print*,'y(0)=',y(0)
print*,'t_a=' ,t_a
print*,'t_b='  ,t_b
print*,''
! -----------------------------------------------------------------

print*,'Press Enter to Start Calculation:'
read(*,*)

! -----------------------------------------------------------------

do k=0,m-1
call sub_RK4_df(t(k),h,x(k),x(k+1),y(k),y(k+1))	  ! Runge-Kutta 4
t(k+1)=t(k)+h
end do
! -----------------------------------------------------------------

call sub_writeResult(t,x,m) !  A subroutine for writing results.
! -----------------------------------------------------------------
end 