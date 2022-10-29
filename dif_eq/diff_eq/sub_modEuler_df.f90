! Modified Euler's method for solving differential equations.			   
! This code is written by Moraad Biagooi
subroutine sub_modEuler_df(t,y,m,h)
implicit none
integer::k,m
real*8::dfunc,h
real*8,dimension(0:m)::t,y

!  modified euler?

do k=0,m-1
y(k+1)=y(k)+h*dfunc(t(k)+h/2,y(k)+(h/2)*dfunc(t(k),y(k)))
t(k+1)=t(k)+h

print*,t(k),y(k),-exp(-t(k))+t(k)**2-2*t(k)+2
end do

call sub_writeResult(t,y,m)

end subroutine



	