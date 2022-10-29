! This program calculates the derivation value of
! the function func_01(x) at the file "func_01.f90"
! at the point x .
! This code is written by Moraad Biagooi
program derivation
implicit none
real*8::func_01,x,h,delta,err
real*8,allocatable,dimension(:,:)::d
integer::j,k,n


delta=1e-7 ! maximum of error
err=1.      ! initial value for error
h=1.		   ! 
j=1		   ! counter of iteration
n=3	       ! maximum of iteration for calculation
x=1.		   ! The length of the point of derivation

print*,''
print*,' This program calculates the derivation value of'
print*,' the function func_01(x) at the file "func_01.f90"'
print*,' at the point x . '
print*,' This code is written by Moraad Biagooi '
print*,' at 1391-09-09'
print*,' --------------------------------------------------'
print*,''
print*,' Enter the maximum value for error (convergence of answers):'
print*,' ?'
read*,delta
print*,''
print*,' Enter the maximum number of iterations:'
print*,' ?'
read*,n
print*,''
print*,' Enter x (lenght):'
print*,' ?'
read*,x
print*,' --------------------------------------------------'
print*,''


allocate(d(0:n,0:n))

d(0,0)=0.5*(func_01(x+h)-func_01(x-h))/h
do
	if (err<delta .or. j>n) exit
	h=h/2
	d(j,0)=0.5*(func_01(x+h)-func_01(x-h))/h
	
	do k=1,j
		d(j,k)=d(j,k-1)+(d(j,k-1)-d(j-1,k-1))/(h**k-1)
	end do
	
	err=abs(d(j,j)-d(j-1,j-1))
	j=j+1
end do
print*,'The answer is :'
print*, d(j-1,j-1) 
print*,' --------------------------------------------------'
print*,'Press Enter to Exit program'
print*,''
read(*,*)

end