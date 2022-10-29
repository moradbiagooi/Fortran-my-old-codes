! This code is written by Moraad Biagooi at 1391-09-29
! THe subroutine for Matrix Factorization Program
Subroutine sub_LU_Maker(n,M_A,M_U,M_L)
integer::i0,j0,k0,k1,n,flag
real::test
real,dimension(n,n)::M_A,M_L,M_U

M_U=M_A
do i0=1,n-1

	if (M_U(i0,i0)==0.) then
		
		flag=0
		do k0=i0+1,n
			if (M_U(k0,i0)/=0.)	 then
				flag=1
				do k1=1,n
				test=M_U(i0,k1)
				M_U(i0,k1)=M_U(k0,k1)
				M_U(k0,k1)=test
				end do
				exit
			endif

		end do
		if (flag==0) then
			print*,'There is unlimited answers to this system.'
			stop
		endif
	else
		
		do k0=i0+1,n
			
			test=(M_U(k0,i0)/M_U(i0,i0))
			M_L(k0,i0)=test
			do j0=1,n
				M_U(k0,j0) =M_U(k0,j0)-test*M_U(i0,j0)
			if (i0==j0) M_U(k0,j0) =0.
			end do
			
		end do
	endif

end do

end

