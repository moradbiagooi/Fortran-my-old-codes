! A subroutine to calculate integral of a function named
! func_01(x) by Simpson method.
! This code is written by Moraad Biagooi at 1391/08/08
subroutine sub_Simpson_int(x1,x2,dx,intgrl)
implicit none
double precision:: x,x1,x2,dx,s1,s2	,func_01 ,intgrl
integer ::i0,i00 ,max

intgrl=0
max=int((x2-x1)/dx)

if (mod(max,2)==0) then
i00=1 
else
max=max-1
i00=0
endif

do i0=i00,max/2
x=x1+2*dx*i0
s1=s1+func_01(x)
s2=s2+func_01(x+dx)
end do

intgrl=(2*s1+4*s2+(func_01(x1)+func_01(x2)))*dx/3



end subroutine  sub_Simpson_int
