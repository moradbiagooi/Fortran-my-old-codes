!
!  module_solid.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/20/2013 1:58:24 AM
!
module module_solid
implicit none

	  Real,dimension(100,100):: Q,Q0 ,T,T0 !! Q=Heat, T=Temperature
	  integer,dimension(100,100):: S,S0 !! S=1:liquid, s=0:solid
	  real::Q0S,Q0L,dt,T0S,T0L
	  real::k_s1,k_s2,k_l1,k_l2,C,sum_dt,kapa,alpha
	  integer::i,iE,j,jE,k,kE,k_laplace,dimm=100
	  integer::sum_s0
end