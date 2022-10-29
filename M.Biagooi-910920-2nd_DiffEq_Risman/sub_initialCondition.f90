! This code is written by Moraad Biagooi at 1391-09-20
! The subroutine for calculation the initial condition of u(x,t).
subroutine sub_initialCondition	(m,n,u,x_,k,r)
implicit none
integer::i0,m,n
real::k
real::f,g
real::r

real,dimension(0:m,0:n):: u
real,dimension(0:m):: x_




u=0.
u(0,:)=0.
do i0=0,m
u(i0,0)=f(x_(i0))
end do


do i0=0,n
u(i0,1)=(1-r**2)*f(x_(i0))+k*g(x_(i0))+(r**2)*(f(x_(i0+1))-f(x_(i0-1)))/2	 
end do

end