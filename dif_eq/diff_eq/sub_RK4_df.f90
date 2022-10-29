! Runge-Kutta method for solving differential equations.
! This code is written by Moraad Biagooi
subroutine sub_RK4_df(t,y,m,h)
implicit none
integer::k,m
real*8::dfunc,h
real*8,dimension(0:m)::t,y
real*8::f1,f2,f3,f4 ! RK4

   ! RK4

do k=0,m-1
f1=dfunc(t(k),y(k))
f2=dfunc(t(k)+h/2,y(k)+(h/2)*f1)
f3=dfunc(t(k)+h/2,y(k)+(h/2)*f2)
f4=dfunc(t(k)+h,y(k)+h*f3)
y(k+1)=y(k)+(h/6)*(f1+2*f2+2*f3+f4)
t(k+1)=t(k)+h

print*,t(k),y(k),-exp(-t(k))+t(k)**2-2*t(k)+2
end do

call sub_writeResult(t,y,m)

end subroutine

