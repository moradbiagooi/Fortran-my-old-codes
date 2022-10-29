!This code is written by Moraad Biagooi at 1391-07-29.
! In this subroutine , we allocate (x,y) in matrix "mat_xy"
subroutine sub_enterxy(i0_end,mat_xy)
implicit none
double precision::mat_xy(1:i0_end,1:2)
integer::i0,i0_end,i1
! i0,i1: counter
! i0_end: the number of allocated points

print*,' Please enter x(i),y(i) values:'
do i0=1,i0_end
  	111 print*,'x(',i0,'      )=?'
	read*,mat_xy(i0,1)
    do i1=1,i0
      if (mat_xy(i1,1)==mat_xy(i0,1) .and. i0/=i1) then
        print *,' You can not enter two similar x . Try again:'
        goto 111
      end if
      end do 
	print*,'y(',i0,'      )=?'
	read*,mat_xy(i0,2)
end do
end subroutine
