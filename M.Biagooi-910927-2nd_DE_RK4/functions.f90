! -----------------------------------------------------------------
! Function needed in the system of equations
! This code is written by Moraad Biagooi
! -----------------------------------------------------------------
function dfx(t,x,y)	 ! dx/dt=dfx
implicit none
real*8::dfx,x,y,t
dfx=y
end

! -----------------------------------------------------------------
function dfy(t,x,y)	 ! dy/dt=dfy
implicit none
real*8::dfy,x,y,t
dfy=-4*y-5*x
end
! -----------------------------------------------------------------