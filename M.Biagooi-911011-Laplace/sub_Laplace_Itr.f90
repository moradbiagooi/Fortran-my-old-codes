! This code is written by Moraad Biagooi at 1391-10-11
! THe subroutine for Laplace_EQ Program
subroutine sub_Laplace_Itr(m,n,u,tol,itr)
implicit none
real::t,test,err,tol
integer::m,n,i,j,itr
real,dimension(m,n)::u
err=1.

u(1,1)=(u(1,2)+u(2,1))/2.
u(m,n)=(u(m,n-1)+u(m-1,n))/2.
u(1,n)=(u(2,n)+u(1,n-1))/2.
u(m,1)=(u(m-1,1)+u(m,2))/2.

itr=0
do while(err>tol)
itr=itr+1
err=0.
do i=2,m-1
do j=2,n-1
t=u(i,j)
u(i,j)=(u(i-1,j)+u(i+1,j)+u(i,j-1)+u(i,j+1))/4
err=err+abs((u(i,j)-t)/u(i,j))
end do
end do
end do
end