! Taylor series method for solving differential equations.			   
! This code is written by Moraad Biagooi
subroutine sub_taylor_df(t,y,m,h)
implicit none
integer::k,m
real*8::dfunc1,dfunc2,dfunc3,dfunc4,h
real*8,dimension(0:m)::t,y
real*8::D1,D2,D3,D4 ! taylor

   ! taylor

do k=0,m-1
D1=dfunc1(t(k),y(k))
D2=dfunc2(t(k),y(k))
D3=dfunc3(t(k),y(k))
D4=dfunc4(t(k),y(k))

y(k+1)=y(k)+(h)*(D1+h*(D2/2+h*(D3/6+h*D4/24)))
t(k+1)=t(k)+h

print*,t(k),y(k),-exp(-t(k))+t(k)**2-2*t(k)+2
end do

call sub_writeResult(t,y,m)

end subroutine

