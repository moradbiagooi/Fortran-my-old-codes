! The program is for calculation an integral
! By Romberg method.
! This code is written by Moraad Biagooi
! at 1391-09
program romberg_int
implicit none
integer::j,k,m,n
real*8::a,b,h,tol,err,func01
real*8,allocatable,dimension(:,:)::r

! ======== Entering Datas section========================
print*,''
print*,' The program is for calculation an integral'
print*,' by Romberg method.				  		'
print*,' This code is written by Moraad Biagooi	 '
print*,' at 1391-09								 '
print*,'---------------------------------------------'
print*,''
print*,''
print*,'Enter tolerance (minimum difference between steps):'
print*,'?'
read*,tol
print*,''
print*,'Enter maximum number of bisecting the interval:'
print*,'?'
read*,n
allocate(r(0:n,0:n))
print*,''
print*,'Enter the interval values: [a,b]'
print*,'a=?'
read*,a
print*,''
print*,'b=?'
read*,b
print*,''
print*,'---------------------------------------------'
print*,''

!======== Calculation section==========================
j=0
m=1
h=b-a
r(0,0)=(h/2)*(func01(b)+func01(a))
err=2*tol
PRINT*,j,r(j,j)
do
if (err<tol .or.j>N) exit

j=j+1
call sub_trap(a,h,j,m,r,n)
do k=1,j
r(j,k)=r(j,k-1)+(r(j,k-1)-r(j-1,k-1))/((4**k)-1)
end do
err=abs(r(j-1,j-1)-r(j,j))
PRINT*,J,r(j,j),' tolerance= ',err
end do

!======= Showing results section========================

print*,'----------------------------------------------'
if (j>n) then
	print*,''
	print*,' The best answer is:'
	print*,r(j,j) 
	print*,' At the maximum step ',j
	print*,' with tolerance ',err
	print*,''
else
	print*,''
	print*,' The answer is found:'
	print*,r(j,j) 
	print*,' At the step ',j
	print*,' with desired tolerance ',err
	print*,''
endif

print*,''
print*,'----------------------------------------------'
print*,' Press Enter to Exit'
print*,''
read(*,*)

end