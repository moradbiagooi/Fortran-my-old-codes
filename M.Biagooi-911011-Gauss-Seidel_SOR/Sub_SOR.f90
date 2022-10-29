! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Gauss-Seidel and SOR methods Program

subroutine sub_SOR(A,B,X1,n,tol,w) !SOR method subroutine
implicit none
integer::i,j,n,itr
real::sum1,sum2,w,test,err,tol
real,dimension(n,n)::A
real,dimension(n)::B,X0,X1

err=1.
X0=0.
X1=1.
itr=0
do while (err>tol)
itr=itr+1
err=0.
do i=1,n
sum1=0.0
do j=1,i-1
sum1=sum1+A(i,j)*X1(j) ! (k) Step
end do

sum2=0.0
do j=i+1,n
sum1=sum1+A(i,j)*X0(j) ! (k-1) Step
end do

X1(i)=(1.0-w)*X0(i)+(w/A(i,i))*(-sum1-sum2+B(i))
err=err+abs((X1(i)-X0(i))/X1(i))
X0(i)=X1(i)
end do
end do

print*,'==X Matrix by SOR method=='
print*,'Number of iterations',itr
print*,'Weight=',w
print*,X1
print*,''



end