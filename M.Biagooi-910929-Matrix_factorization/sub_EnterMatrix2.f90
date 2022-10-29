! This code is written by Moraad Biagooi at 1391-09-29
! THe subroutine for Matrix Factorization Program
Subroutine sub_EnterMatrix2(n,Mat)
implicit none
integer::n
real,dimension(n)::mat

mat=reshape((/4.,1.,-3.,4./),(shape(mat)))

end

