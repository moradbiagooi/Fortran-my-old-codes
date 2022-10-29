! A subroutine to enter datas of integral process
! This code is written by Moraad Biagooi at 1391/08/08
subroutine sub_enter_int(x1,x2,dx)
implicit none
double precision::x1,x2,dx,test


print*,'-----------------------------------------------------'
print*,' We want to calculate the function " func_01(x)"'
print*,' in the file "func_01.f90" , predefined as :  '
print*,' func_01(x)=(x^2)*(exp(-x))'
print*,''
print*,' with the two method :Trapezoidal or Simpson '
print*,' methods . '
print*,''
print*, 'This code is written by Moraad Biagooi at 1391/08/08'
print*,'====================================================='
print*,'              press Enter to Continue'
read(*,*)

print*,'Please enter range of x1,x2 (intervals of itegral):'
print*,'x1=?'
read *,x1
print*,'x2=?'
read *,x2
print*,''
print*,'Enter differential of x :'
print*,'dx=?'
read *,dx
print*,'-----------------------------------------------------'
print*,''
print*,'Now,choose one of bellow methods and enter its number:'
print*,''
print*,'1 - Trapezoidal method'
print*,'2 - Simpson method '
print*,'3 - Not entered yet!'
print*,''
print*,''

if (x1>x2) then	   !  To make sure x1<x2  .
test = x1		   
x1=x2
x2=test
endif

end subroutine sub_enter_int