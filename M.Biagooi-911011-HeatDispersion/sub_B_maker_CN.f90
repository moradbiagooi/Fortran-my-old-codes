! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Crank-Nicolson solved by LU for Heat Dispersion Program
subroutine sub_B_Maker_CN(m,M_B,M_X,r,C1,C2)
implicit none
integer::i0,m
real::C1,C2,r
real,dimension(m)::M_B,M_X

do i0=1,m
if (i0==1) then
M_B(i0)=2*(1-r)*M_X(i0)+r*M_X(i0+1)+r*C1
else if (i0==m) then
M_B(i0)=2*(1-r)*M_X(i0)+r*C2+r*M_X(i0-1)
else
M_B(i0)=2*(1-r)*M_X(i0)+r*M_X(i0+1)+r*M_X(i0-1)
endif

end do

end