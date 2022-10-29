! A subroutine to calculate integral of a function named
! func_01(x) by trapezoidal method.
! This code is written by Moraad Biagooi at 1391/08/08
subroutine sub_trapz_int(x1,x2,dx,intgrl)
implicit none
double precision:: x,x1,x2,dx,intgrl ,func_01
integer ::i0,max

intgrl=0
max=(x2-x1)/dx
do i0=1,max-1
x=x1+dx*i0
intgrl=intgrl+func_01(x)
end do
intgrl=(intgrl+(func_01(x1)+func_01(x2))/2)*dx




end subroutine sub_trapz_int
