! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Crank-Nicolson solved by LU for Heat Dispersion Program
subroutine sub_X_Maker(n,M_X,M_Y,M_U)
implicit none
integer::i0,j0,n
real::test
real,dimension(n,n)::M_U
real,dimension(n)::M_X,M_Y

M_X(n)=M_Y(n)/M_U(n,n)
do  i0=N-1,1,-1
test=0.
do  j0=i0+1,N
test=test+M_U(i0,j0)*M_X(j0)
end do
M_X(i0)=(M_Y(i0)-test)/M_U(i0,i0)
end do

end
