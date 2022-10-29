! -----------------------------------------------------------------
! Runge-Kutta method (one step) for solving differential equations.
! This code is written by Moraad Biagooi
! -----------------------------------------------------------------
subroutine sub_RK4_df(t,h,x,x1,y,y1)
implicit none
real*8::dfx,dfy,h
real*8::t,x,x1,y,y1
real*8::f1,f2,f3,f4 ! RK4
! -----------------------------------------------------------------
   ! RK4

f1=dfx(t,x,y)
f2=dfx(t+h/2,x+(h/2)*f1,y)
f3=dfx(t+h/2,x+(h/2)*f2,y)
f4=dfx(t+h,x+h*f3,y)

x1=x+(h/6)*(f1+2*f2+2*f3+f4)

f1=dfy(t,x,y)
f2=dfy(t+h/2,x,y+(h/2)*f1)
f3=dfy(t+h/2,x,y+(h/2)*f2)
f4=dfy(t+h,x,y+h*f3)

y1=y+(h/6)*(f1+2*f2+2*f3+f4)

! -----------------------------------------------------------------
end subroutine
! -----------------------------------------------------------------