! This function integral is calculated in Romberg's method
! This code is written by Moraad Biagooi
! The program is for calculation an integral
! By Romberg method.
! This code is written by Moraad Biagooi
! at 1391-09
program electron_sc   ! Electrons in semi-conductors
use mod_phy_const
implicit none
integer::j,k,m,n
real*8::a,b,h,tol,err,func_01,func_02,t
real*8,allocatable,dimension(:,:)::r

! ======== Entering Datas section========================
print*,''
print*,' The program is for calculation an integral by'
print*,' Romberg method.'
print*,' Here we find density of electrons in silicon.'
print*,' This code is written by Moraad Biagooi at'
print*,' 1391-09								 '
print*,'----------------------------------------------'
print*,''
print*,''
print*,' Enter tolerance (minimum difference between steps):'
print*,'?'
tol=0.00000001
read*,tol
print*,''
print*,' Enter maximum number of bisecting the interval:'
print*,'?'
n=20
read*,n
allocate(r(0:n,0:n))
print*,''
print*,' Enter the Temperature(more than 150 kelvin):'
print*,'?'
T=150
read*,t
print*,''
a=1.12/ryd
b=(1.12*10)/ryd	  ! 10 times of fermi energy of silicon as physical infinity
print*,''
print*,' The interval of integral is: [a,b] (energy in A.U)'
print*,' a=',a,' b=',b
print*,' Here we used 10 times of fermi energy of silicon '
print*,' as physical infinity.				'
print*,'----------------------------------------------'
print*,''				
print*,' Press Enter to Continue'
print*,''
read(*,*)
print*,'----------------------------------------------'
print*,''

!======== Calculation section==========================

j=0
m=1
h=b-a
r(0,0)=(h/2)*(func_01(b,t)*func_02(b)+func_01(a,t)*func_02(a))
err=2*tol
PRINT*,j,r(j,j)
do
if (err<tol .or.j>N) exit

j=j+1
call sub_trap(a,h,j,m,r,n,t)
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
print*,'-----------------------------------------------'
print*,' Press Enter to Exit'
print*,''
read(*,*)

end