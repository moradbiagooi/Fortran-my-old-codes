!This code is written by Moraad Biagooi at 1391-09-20


function f(x)  !Initial condition function for the position of string
real::f,x
if (x<0.6 .and. x>0) then
f=5*x/3
else if (x<1.0 .and. x>=0.6) then
f=(5-5*x)/2
else
f=0.
end if
			  
end
!------------------------------------------------------------------------			


function g(x)  !Initial condition function for the velocity of string
real::g,x
g=0.0
end