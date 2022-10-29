! dfunc is 1st derivation of y=y(t)
! This code is written by Moraad Biagooi
function dfunc(t,y)
implicit none
real*8::t,y,dfunc
dfunc=t**2-y
end


