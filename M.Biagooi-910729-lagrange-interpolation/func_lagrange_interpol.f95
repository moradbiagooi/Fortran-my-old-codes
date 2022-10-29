!This code is written by Moraad Biagooi at 1391-07-29.
! Interpolated function by Lagrange method
function f_lagrang_intrpl(i0_end,x,mat_xy) 
implicit none
double precision::f_lagrang_intrpl,x,temp,mat_xy(1:i0_end,1:2)
integer::i0_end,i0,i1
! i0_end: Number of points allocated.
!i0,i1: counters
!temp: A temporary variable
!x: the x of point that we want to calclulate interpolated fucntion at it.

	f_lagrang_intrpl=0
	do i0=1,i0_end
		temp=mat_xy(i0,2)

        do i1=1,i0_end
          if (i1==i0) then
            temp=temp*1
          else
    		temp=temp*(x-mat_xy(i1,1))/(mat_xy(i0,1)-mat_xy(i1,1))
          endif
    	end do
    
    	f_lagrang_intrpl=f_lagrang_intrpl+temp
	end do



end function f_lagrang_intrpl
