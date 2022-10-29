! dfunc1 to dfunc4 are nth derivations of y=y(t)
! These functions are used only in Taylor series 
! method in solving d.e
! This code is written by Moraad Biagooi
function dfunc1(t,y)
implicit none
real*8::t,y,dfunc1
dfunc1=t**2-y
end

function dfunc2(t,y)
implicit none
real*8::t,y,dfunc2
dfunc2=2*t-t**2+y
end

function dfunc3(t,y)
implicit none
real*8::t,y,dfunc3
dfunc3=2-2*t+t**2-y
end

function dfunc4(t,y)
implicit none
real*8::t,y,dfunc4
dfunc4=-2+2*t-t**2+y
end
