! This code is written by Moraad Biagooi at 1391-09-29
! THe subroutine for Matrix Factorization Program
Subroutine sub_EnterMatrix1(n,Mat)
implicit none
integer::n
real,dimension(n,n)::mat

mat=reshape((/1.,2.,3.,-1.,1.,1.,-1.,2.,0.,-1.,-1.,3.,3.,1.,2.,-1./),(shape(mat)))

end
