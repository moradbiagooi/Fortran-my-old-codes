! A trapezoidal subroutine specially for Romberg's integral program	.
! This code is written by Moraad Biagooi
subroutine sub_trap(a,h,j,m,r,n,t)
implicit none
integer::j,m,n,p
real*8,dimension(0:n,0:n)::r
real*8::a,h,sum,func_01,func_02,t
h=h/2
sum=0.

do p=1,m
sum=sum+func_01(a+h*(2*p-1),t)*func_02(a+h*(2*p-1))
end do

r(j,0)=r(j-1,0)/2+h*sum
m=2*m
end