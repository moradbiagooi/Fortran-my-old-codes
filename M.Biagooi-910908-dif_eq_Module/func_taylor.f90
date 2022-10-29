! dfunc1 to dfunc4 are nth derivations of y=y(t)
! These functions are used only in Taylor series 
! method in solving d.e
! This code is written by Moraad Biagooi
function dfunc1(t0,y0)
implicit none
real*8::t0,y0,dfunc1
dfunc1=t0**2-y0
end

function dfunc2(t0,y0)
implicit none
real*8::t0,y0,dfunc2
dfunc2=2*t0-t0**2+y0
end

function dfunc3(t0,y0)
implicit none
real*8::t0,y0,dfunc3
dfunc3=2-2*t0+t0**2-y0
end

function dfunc4(t0,y0)
implicit none
real*8::t0,y0,dfunc4
dfunc4=-2+2*t0-t0**2+y0
end
