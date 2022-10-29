! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Crank-Nicolson solved by LU for Heat Dispersion Program
Subroutine sub_A_Maker_CN(m,M_A,r)
implicit none
integer::m,i0
real,dimension(m,m)::M_A
real::r

do i0=1,m
M_A(i0,i0)=2.*(1+r)
if(i0>1) M_A(i0,i0-1)=-r
if(i0<(m)) M_A(i0,i0+1)=-r
end do

end
