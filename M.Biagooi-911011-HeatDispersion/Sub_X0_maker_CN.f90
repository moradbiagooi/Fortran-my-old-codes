! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Crank-Nicolson solved by LU for Heat Dispersion Program
Subroutine sub_X0_Maker_CN(m,M_X,x0,h,c1,c2)
implicit none
integer::m,i0
real,dimension(m)::M_X
real::pi,x,c1,c2,h,x0
pi=3.141592

do i0=1,m! x(i) : Initial Values of X
x=(i0-1)*h+x0
M_X(i0)=sin(pi*x)+sin(3*Pi*x) 
end do

c1=0. !x(0)=0. : Constant Boundary values
c2=0. !x(m+1)=0. : Constant Boundary values 

end