! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Gauss-Seidel and SOR methods Program
Subroutine sub_EnterMatrix1(n,Mat)
implicit none
integer::n,i
real,dimension(n,n)::mat

mat=reshape((/10.,-1.,2.,0.,-1.,11.,-1.,3.,2.,-1.,10.,-1.,0.,3.,-1.,8./),(shape(mat)))

print*,'== A =='
do i=1,n
print*,Mat(i,:)
end do

end
