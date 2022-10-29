program crank_nicolson_test
implicit none
complex,allocatable,dimension(:,:)::H,H_e,H1,H2,H2_inv,H_t,Id
complex,allocatable,dimension(:)::sai1,sai0
complex::i ,norm ,t_sum
integer::n,i0,i1 ,ErrorFlag
real::dt,t,t_end 
real::s1,s2

i=(0.,1.)
n=5
dt=0.001
t_end=1.
allocate(H(0:N,0:N),H_e(0:N,0:N),H1(0:N,0:N),H2(0:N,0:N))
allocate(H2_inv(0:N,0:N),H_t(0:N,0:N),Id(0:N,0:N))
allocate(sai0(0:N),sai1(0:N))

Id=0.
Do i0=0,n
id(i0,i0)=1.
end do


do i0=0,N
do i1=0,N
CALL RANDOM_NUMBER(s1)
CALL RANDOM_NUMBER(s2)
H(i0,i1)=(s1+i*s2)*10.
end do
end do

print*,''
print*,h
print*,''
call sub_hermit_maker(H,n)
print*,''
print*,h
print*,''

H_e=Id-i*dt*H

H1=Id-(i*dt/2.)*H
H2=Id+(i*dt/2.)*H


CALL FindInv(H2, H2_inv, n+1, ErrorFlag)	  

!H2_inv=conjg(H2_inv)
H_t=matmul(H2_inv,H1)

print*,''
print*,h_t
print*,''

!call sub_hermit_maker(H_t,n)

print*,''
print*,h_t
print*,''



open(100,file='resultCN.txt')
open(200,file='resultEuler.txt')
open(300,file='normmCN.txt')


sai0(0)=1.1
sai0(1)=2.2
sai0(2)=-3.3
sai0(3)=1.7
sai0(4)=2.1
sai0(5)=-3.3

norm=0.
do i0=0,n
norm=norm+sai0(i0)*conjg(sai0(i0))
end do
norm=sqrt(norm)
sai0=sai0/norm
sai1=sai0

do t=0.,t_end,dt

!-----------------------  ! Crank-Nicolson
do i0=0,n
t_sum=0.
do i1=0,n
t_sum=t_sum+H_t(i0,i1)*sai0(i1)
end do
sai1(i0)=t_sum
end do
sai0=sai1
!-----------------------

!norm=0.
!do i0=0,n
!norm=norm+sai0(i0)*conjg(sai0(i0))
!end do
!norm=sqrt(norm)
!sai0=sai0/norm

!write(100,'(1X,20(1X,F6.3))')t,real(sai0(0)*conjg(sai0(0))),real(sai0(1)*conjg(sai0(1))),real(sai0(2)*conjg(sai0(2)))
write(100,'(1X,20(1X,F6.3))')t,real(sai0(0)*conjg(sai0(0))),real(sai0(1)*conjg(sai0(1))),real(sai0(2)*conjg(sai0(2))),real(sai0(3)*conjg(sai0(3))),real(sai0(4)*conjg(sai0(4))),real(sai0(5)*conjg(sai0(5)))
write(300,'(1X,20(1X,F6.3))')t,real(sai0(1)*conjg(sai0(1)))+real(sai0(2)*conjg(sai0(2)))+real(sai0(3)*conjg(sai0(3)))+real(sai0(4)*conjg(sai0(4)))+real(sai0(5)*conjg(sai0(5)))
end do
!===============================================================================
!===============================================================================
sai0(0)=1.1
sai0(1)=2.2
sai0(2)=-3.3
sai0(3)=1.7
sai0(4)=2.1
sai0(5)=-3.3

norm=0.
do i0=0,n
norm=norm+sai0(i0)*conjg(sai0(i0))
end do
norm=sqrt(norm)
sai0=sai0/norm

sai1=sai0

do t=0.,t_end,dt
!-----------------------  Euler
do i0=0,n
t_sum=0.
do i1=0,n
t_sum=t_sum+H_e(i0,i1)*sai0(i1)
end do
sai1(i0)=t_sum
end do
sai0=sai1

!-------------------------

norm=0.
do i0=0,n
norm=norm+sai0(i0)*conjg(sai0(i0))
end do
norm=sqrt(norm)
sai0=sai0/norm

!write(200,'(1X,20(1X,F6.3))')t,real(sai0(0)*conjg(sai0(0))),real(sai0(1)*conjg(sai0(1))),real(sai0(2)*conjg(sai0(2)))
write(200,'(1X,20(1X,F6.3))')t,real(sai0(0)*conjg(sai0(0))),real(sai0(1)*conjg(sai0(1))),real(sai0(2)*conjg(sai0(2))),real(sai0(3)*conjg(sai0(3))),real(sai0(4)*conjg(sai0(4))),real(sai0(5)*conjg(sai0(5)))
end do

do i0=0,n
do i1=0,n
print*,H_T(i0,i1),H_e(i0,i1)
end do
end do

end