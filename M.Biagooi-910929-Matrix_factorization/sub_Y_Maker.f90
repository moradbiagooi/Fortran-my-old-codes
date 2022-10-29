! This code is written by Moraad Biagooi at 1391-09-29
! THe subroutine for Matrix Factorization Program
subroutine sub_Y_Maker(n,M_Y,M_B,M_L)
implicit none
integer::i0,j0,n
real::test
real,dimension(n,n)::M_L
real,dimension(n)::M_B,M_Y

M_Y(1)=M_B(1)/M_L(1,1)
do i0=2,N
test=0.
do j0=1,i0-1
test=test+M_L(i0,j0)*M_Y(j0)
end do
M_Y(i0)=(M_B(i0)-test)/M_L(i0,i0)
end do

end
