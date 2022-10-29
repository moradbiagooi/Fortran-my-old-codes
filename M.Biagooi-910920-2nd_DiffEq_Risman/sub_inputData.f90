! This code is written by Moraad Biagooi at 1391-09-20
! The subroutine for inputting data needed for calculation.

subroutine sub_inputData(m,n,h,k,r,x0)
implicit none
integer::m,n,flag
real::t0,t1
real::x0,x1
real::h,k,c
real::r

print*,''
print*,''
print*,' This program calculates the propagation of a mechanical wave in time.'
print*,' We suppose that we have a string with differential equation as bellow.'
print*,'         (d^2/dt^2) U(x,t)=r^2 (d^2/dx^2) U(x,t)'
print*,' with r=c*k/h'
print*,' Then we calculate its evolution in time.		'
print*,'' 
print*,''
print*,'-------------------------------------------------------------------------'
print*,''
print*,'Press Enter to Continue'
read(*,*)
print*,''
print*,'-------------------------------------------------------------------------'
print*,''
print*,'Initial conditions of U(x,t) and '
print*,'If you want to input your datas, enter (1), else enter (2)'
read*,flag
print*,''
print*,'-------------------------------------------------------------------------'
if (flag==1) then
print*,'Enter the speed of wave:'
read*,c
print*,'Differential of x coordinate?'
read*,h
print*,'Differential of t coordinate?'
read*,k
print*,'Interval of x [x0,x1]:'
print*,'x0=?'
read*,x0
print*,'x1=?'
read*,x1
print*,'Interval of t [t0,t1]:'
print*,'t0=?'
read*,t0
print*,'t1=?'
read*,t1

!================================
else
!================================

c=2.
h=0.1
k=0.05

x1=1.
x0=0.

t1=0.5
t0=0.0


print*,'The used datas is as bellow' 
print*,'The speed of wave:',c
print*,''
print*,'Differential of x coordinate:',h
print*,''
print*,'Differential of t coordinate:',k
print*,''
print*,'Interval of x [x0,x1]:'
print*,'x0:',x0
print*,''
print*,'x1:',x1
print*,''
print*,'Interval of t [t0,t1]:'
print*,'t0:',t0
print*,''
print*,'t1:',t1



endif

m=int((x1-x0)/h)
n=int((t1-t0)/k)

r=c*k/h


print*,'-------------------------------------------------------------------------'
print*,''
print*,'Press Enter to Continue'
read(*,*)
print*,''
print*,'-------------------------------------------------------------------------'
print*,''

end 