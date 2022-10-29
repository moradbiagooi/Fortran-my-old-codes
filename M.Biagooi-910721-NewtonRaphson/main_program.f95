! Salam.
! This program will calculate root of a function with 
! the method of Newton-Rophson
! Written By Moraad Biagooi at 1391-07-21

program newton_root_finder
use zero_constants
implicit none
integer::i0,indc2,indc1,indc0
real::p1,y0,y0_prime,test0
real::p0,relErr,y1,DP,y1_prime
real::func_01,func_02,func_01_deriv,func_02_deriv
! p0: first point 
! p1: next point
! max_ITR: maximum number of iterations
! epsilon: maximum value for function at root
!deLTa : maximum of relative error
! eta: :fune tuning for relative error

indc2=1

print*,'Hi. This program will calculate roots of a function'
print*,'by Newton-Rophson method. For example, we find roots'
print*,'of functions in the files function_01.f95 and'
print*,'function_02.f95. you can change those files as your'
print*,'want . '
 print*,'Results will be in file results.txt'
print*,'Codes Written By Moraad Biagooi at 1391-07-21'
print*,'                 PRESS ENTER TO CONTINUE'
read(*,*)

print*,' Choose the functions you want:'
print*,' (1) : f(x)=x-cos(x)'
print*,' (2) : f(x)=sin(x)-2cos(2x)'
print*,'Enter its number. number 1 or 2 ? '
1 read (*,*) indc1
if (indc1>2 .or. indc1<1) then
   goto 1
   endif

print*,' If you want to change these parameters'
print*,' enter (2)  if you dont, enter (1)'
print*,'epsilon=',epsilon
print*,'delta=',delta
print*,'eta=',eta
print*,'number 1 or 2 ? '
2 read *, indc0
if (indc0>2 .or. indc0<1) then 
  goto 2
  else if (indc0==2) then
    print*,'epsilon ? '
    read *, epsilon
    print*,'delta ? '
    read *, delta
    print*, 'eta ? '
    read *,eta
    endif

    print*,' The program will find roots in the range:'
    print*, 'x=-2 to x=2'

    print*,' If you want to change these parameters'
	print*,' enter (2)  if you dont, enter (1)'
    
3 read *, indc0
if (indc0>2 .or. indc0<1) then 
  goto 3
  else if (indc0==2) then
    print*,'x1 ? '
    read *, x1
    print*,'x2 ? '
    read *,X2
    endif
if (x1>x2) then
  test0=x1
  x1=x2
  x2=test0
  end if 

  p0=(x1+x2)/2
 print*,' If you want to change these parameters'
	print*,' enter (2)  if you dont, enter (1)'
    print*,'First point=(',x1,'+',x2,')/2'
    print*,'First point=',p0
    print*,'max iteration= ',max_itr
    print*, 'number 1 or 2 ? '
4 read *,indc0
if (indc0>2 .or. indc0<1) then 
  goto 4
  else if (indc0==2) then
    print*,  'First point ? '
   5 read *,p0
if (p0>x2 .or. p0<x1) then
  print*,' First point should be between '
  print*,x1,' and ',x2
  goto 5
  endif
   print*, 'max iteration ? '
    read *,max_itr
    endif



! -------------------root finding process-----------------

  if (indc1==1.) then
    y0=func_01(p0)
    y0_prime=func_01_deriv(p0)
    end if
     if (indc1==2.) then
    y0=func_02(p0)
    y0_prime=func_02_deriv(p0)
    end if

    if (y0_prime==0.) then
      indc2=0
      goto 10
      endif
      
  
    if (y0==0.) then
      indc2=2
      goto 10
      endif
  
if (y0==0.) then
      print *,'A root has found at x=',p0
      
       print*, 'Press Enter continue'
      read(*,*)
      indc2=2
      goto 10
      endif

 
    ! Iterations begans
do i0=0,max_itr
  DP=y0/y0_prime
  p1=p0-DP
  
  if (mod(i0,5)==0)then 
  print*,'-------Iteration step= ',i0,' of ',max_itr
  print*,'p0=',p0
  print*,'p1=',p1
  print*,'f(p0)=',y0
  print*,'f_prime(p0)=',y0_prime
  end if

  
  if (indc1==1) then
    y1=func_01(p1)
    y1_prime=func_01_deriv(p1)
    end if
     if (indc1==2) then
    y1=func_02(p1)
    y1_prime=func_02_deriv(p1)
    end if

    if (y1_prime==0) then
      indc2=0
      exit
      endif
      
  
    if (y1==0) then
      indc2=2
      exit
      endif
  
if (y1==0) then
      print *,'A root has found at x=',p1
      
      print*, 'Press Enter continue'
      read(*,*)
      indc2=2
      exit
      endif


      relErr=(2*DP)/(abs(y1)+eta)
 ! abs?
if (relErr<delta .and. abs(y1)<epsilon) then
  indc2=2
  exit
  endif

p0=p1
y0=y1

end do

! -------------------END  of root finding process-----------------
10 open(15,file='results.txt')
      
if (indc2==0) then
print*,'Divided By Zero at point x=',p0
write(15,*)'Divided By Zero at point x=',p0

else if (indc2==1) then
  print* ,' Iteration steps finished'
  print*,'Such a root was not found'
  
  write(15,*)' Iteration steps finished'
  write(15,*)'Such a root was not found'

else if (indc2==2) then
  print* ,'A Root has been found at'
  print*,'x=',p0

  write(15,*) 'A Root has been found at'
  write(15,*)'x=',p0
end if

  print*,'results at the last iteration:'
  print*,'-------Iteration step= ',i0,' of ',max_itr+1
  print*,'p0=',p0
 ! print*,'p1=',p1
  print*,'f(p0)=',y0
  print*,'f_prime(p0)=',y0_prime
  
  print*,'Codes Written By Moraad Biagooi at 1391-07-21'

  write(15,*)'results at the last iteration:'
  write(15,*)'-------Iteration step= ',i0,' of ',max_itr+1
  write(15,*)'p0=',p0
  !write(1,*)'p1=',p1
  write(15,*)'f(p0)=',y0
  write(15,*)'f_prime(p0)=',y0_prime
  
  write(15,*)'Codes Written By Moraad Biagooi at 1391-07-21'

     
      print*,'These values is in file results.txt'
      print*,'Press Enter To EXit'
      read(*,*)


      end program
  
! This program will calculate root of a function with 
! the method of Newton-Rophson
! Written By Moraad Biagooi at 1391-07-21



