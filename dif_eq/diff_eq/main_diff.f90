! This program solves differential eq.'
! numerically in five methods. '
! for  (d/dt)y=t^2-y'
! with y(0)=1   in [0,2]'
! This code is written by Moraad Biagooi
program diff_eq
implicit none
integer::m,ch
real*8::a,b,h
real*8,allocatable,dimension(:)::t,y

print*,''
print*,' This program solves differential eq.'
print*,' numerically in five methods. '
print*,' For instance we solve the bellow d.e'
print*,'         (d/dt)y=t^2-y'
print*,' within this boundary conditions:'
print*,' y(0)=1 in the interval [0,2]'
print*,'--------------------------------------'
print*,''
print*,' Enter the number of subintervals:'
read*,m	   !subintervals
allocate(y(0:m),t(0:m))		! allocate matrix for function and time
y=0.
t=0.
! Boundary conditions
a=0. 
b=2.
h=(b-a)/m
y(0)=1.
t(0)=a
! -------------------

print*,'Enter the number of method that you want'
print*,'to solve the diffrential equation with:'
print*,''
print*,'(1) Euler '
print*,'(2) Modified Euler '
print*,'(3) Huen '
print*,'(4) Taylor series'
print*,'(5) Runge-Kutta'
print*,''
print*,'(10) No, Thank you! Exit please!'
1 print*,''
print*,'number?'
read*,ch

if (ch==1) call sub_Euler_df(t,y,m,h)
if (ch==2) call sub_modEuler_df(t,y,m,h)
if (ch==3) call sub_Huen_df(t,y,m,h)	 
if (ch==4) call sub_taylor_df(t,y,m,h)							
if (ch==5) call sub_RK4_df(t,y,m,h)							

if (ch==10) stop

print*,'wrong number,Please choose between 1 to 5 or 10'
goto 1


end 