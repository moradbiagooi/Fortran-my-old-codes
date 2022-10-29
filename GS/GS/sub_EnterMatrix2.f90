! This code is written by Moraad Biagooi at 1391-10-11
! The subroutine for Gauss-Seidel and SOR methods Program
Subroutine sub_EnterMatrix2(n,Mat)
implicit none
integer::n
real,dimension(n)::mat

mat=reshape((/6.,25.,-11.,15./),(shape(mat)))

print*,'== B =='
print*,mat

end

