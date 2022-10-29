! This code is written by Moraad Biagooi at 1391-09-20
! The subroutine for calculation the evolution of u(x,t)
subroutine sub_calculation(m,n,u,r)
implicit none
integer::i0,j0,m,n
real::r
real,dimension(0:m,0:n):: u



do j0=1,n-1
do i0=1,m-1
u(i0,j0+1)=(2-2*(r**2))*u(i0,j0)+(r**2)*(u(i0+1,j0)+u(i0-1,j0))-u(i0,j0-1)

end do
end do
end