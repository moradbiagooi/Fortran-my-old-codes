! Huen's method for solving differential equations.
! This code is written by Moraad Biagooi
subroutine sub_Huen_df()
use mod_mod
implicit none
integer::k
real*8::k1,k2,p0 
real*8::dfunc

do k=0,m-1
k1=dfunc(t(k),y(k))
p0=y(k)+h*k1	   ! ??? dk 
t(k+1)=t(k)+h
k2=dfunc(t(k+1),p0)
y(k+1)=y(k)+h*(k1+k2)/2

print*,t(k),y(k),-exp(-t(k))+t(k)**2-2*t(k)+2
end do

call sub_writeResult(t,y,m)

end subroutine



