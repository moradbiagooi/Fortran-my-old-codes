program crank_nicolson_test
implicit none
real,allocatable,dimension(:,:)::H,H_e,Id,K_,V_
real,allocatable,dimension(:,:)::sai1,sai0
real,allocatable,dimension(:)::E_
complex::i ,norm ,t_sum
integer::n,m,m0,i0,i1 ,ErrorFlag
real::dt,t,t_end 
real::s1,s2
real::X_a,X_b,dx,L,X,v
real::rr

X_a=-7.
X_b=7.
dx=0.5
L=X_b-X_a
n=int(L/dx)
print*,'n=',n
i=(0.,1.)
dt=0.001
t_end=10.
m=8

allocate(H(0:N,0:N),H_e(0:N,0:N))
allocate(V_(0:N,0:N),K_(0:N,0:N))
allocate(Id(0:N,0:N),E_(0:M))
allocate(sai0(0:m,0:N),sai1(0:m,0:N))
H=0.
H_e=0.
V_=0.
sai0=0.
sai1=0.

Id=0.
X=0.
print*,'Creating matrix'
Do i0=0,n
id(i0,i0)=1.

X=X_a+dx*i0
V_(i0,i0)=V(x)

if (i0>0) K_(i0,i0-1)=1./(dx**2)
K_(i0,i0)=-2./(dx**2)
if (i0<n) K_(i0,i0+1)=1./(dx**2)

end do

H=K_+V_

call sub_hermit_maker(H,n)

H_e=Id-dt*H


open(200,file='resultEuler.txt')

!===============================================================================

sai0=1.0

norm=0.
do i0=0,n
norm=norm+sai0(0,i0)**2
end do
norm=sqrt(norm)
sai0=sai0/norm


do m0=0,m
print*,'propagation,   state',m0
do i0=0,m0-1,+1
sai0(m0,:)=sai0(m0,:)-sai0(i0,:)
end do


norm=0.
do i0=0,n
norm=norm+sai0(m0,i0)**2
end do
norm=sqrt(norm)
sai0(m0,:)=sai0(m0,:)/norm


do t=0.,t_end,dt
!-----------------------  Euler
do i0=0,n
t_sum=0.
do i1=0,n
t_sum=t_sum+H_e(i0,i1)*sai0(m0,i1)
end do
sai1(m0,i0)=t_sum
end do
sai0(m0,:)=sai1(m0,:)

!-------------------------

norm=0.
do i0=0,n
norm=norm+sai0(m0,i0)*sai0(m0,i0)
end do
norm=sqrt(norm)
sai0(m0,:)=sai0(m0,:)/norm

end do

end do! Do m0=0,m
!=========================
print*,'Printing in file'
do i0=0,n
x=x_a+i0*dt
!write(200,'(1X,20(1X,F6.3))') x,rr(sai0(0,i0))+0.5,rr(sai0(1,i0))+1.0,rr(sai0(2,i0))+1.5,rr(sai0(3,i0))+2.0,rr(sai0(4,i0))+2.5
write(200,'(1X,20(1X,F6.3))') x,abs(sai0(0,i0))+0.5,sai0(1,i0)+1.0,sai0(2,i0)+1.5,sai0(3,i0)+2.0,sai0(4,i0)+2.5,sai0(5,i0)+3.0,sai0(6,i0)+3.5,sai0(7,i0)+4.0,sai0(8,i0)+4.5
end do

!do m0=0,m

!end do

end

function V(x)
implicit none
real::V,x,B
B=0.003906 
V=((X**4)/64)-((X**2)/4)+(x**3)*B
end

