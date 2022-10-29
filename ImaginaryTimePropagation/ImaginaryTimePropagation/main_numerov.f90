subroutine Im_t_p
implicit none
real,allocatable,dimension(:,:)::sai1,mu_	
real,allocatable,dimension(:)::x_ ,V_ ,e_ ,sai0,saiN_
real,allocatable,dimension(:)::energy
integer::n ,i0 ,j0,k0,flag ,iE ,states  ,int_E
real::x_a,x_b,dx ,L,t_end,pi,dE	,norm ,E
real::v	,sai_min,sai_min_n  ,test
real::E_a,E_b
t_end=.9
pi=3.141592

X_a=-5.
X_b=5.
dx=0.01
L=X_b-X_a
n=int(L/dx)

sai_min=0.000001
sai_min_n=0.001
states=5

dE=0.0001
E_a=-1.5
E_b=6.
int_E=int((E_b-E_a)/dE)


allocate(sai0(0:n))
allocate(sai1(0:states,0:n))

allocate(x_(0:n),V_(0:n),mu_(0:states,0:states))
allocate(energy(0:states),e_(0:int_E),saiN_(0:int_E))

do i0=0,n
x_(i0)=(real(i0)*dx)+X_a
V_(i0)=v(x_(i0))
E_(i0)=(real(i0)*dE)+E_a
end do

do i0=0,int_E
E_(i0)=(real(i0)*dE)+E_a
end do


do iE=0,states
sai0(0)=0.
sai0(1)=sai_min

sai1(iE,0)=0.
sai1(iE,1)=sai_min

end do

!------------------------------------------------
print*,'Step 1'
open(400,file='energy_diagram.txt')
	
do j0=0,int_e
do i0=2,n
sai0(i0)=-sai0(i0-2)+2*(1-(dx**2)*(E_(j0)-V_(i0-1)))*sai0(i0-1)
end do
saiN_(j0)=sai0(n)
!print*,E_(j0) 
write(400,*)E_(j0),sai0(n)
if (mod(j0,1000)==0) print*,j0 , ' of ' , int_e

end do
!--------------------------------------------------
print*,'Step 2'
flag=-1
iE=0
do j0=0,int_e


if (saiN_(j0)<sai_min_n) then
test=saiN_(j0+1)/saiN_(j0)
if (test<0. .and. flag==-1) then
flag =1
!energy(iE)=E_(j0)
!iE=iE+1
if (iE>states) exit
end if

if (test>0. .and. flag==1) then
flag =-1
energy(iE)=E_(j0)
iE=iE+1
if (iE>states) exit
end if

end if

end do
!--------------------------------------------------
print*,'Step 3'


do iE=0,states
E=energy(iE)
do i0=2,n
sai1(iE,i0)=-sai1(iE,i0-2)+2*(1-(dx**2)*(E-V_(i0-1)))*sai1(iE,i0-1)
end do

end do

!--------------------------------------------------

print*,'Step 4'
do iE=0,states
norm=0.
do i0=0,n
norm=norm+ (sai1(iE,i0))**2
end do
norm=sqrt(norm)
if (norm==0) cycle
sai1(iE,:)=sai1(iE,:)/norm
end do
sai1=sai1*10

!-------------------------------------------------
open(100,file='result.txt')
open(200,file='result_energy.txt')
open(300,file='potential.txt')
open(400,file='Dipole.txt')

do i0=0,n
write(100,*) sai1(0,i0),-sai1(1,i0)+1.,sai1(2,i0)+2.0,-sai1(3,i0) +3.
write(300,*) v_(i0)
end do

do iE=0,states
write(200,*)  Energy(iE)-Energy(0)
end do


do j0=0,states
do k0=0,states
test=0.
do i0=0,n
test=test+sai1(j0,i0)*x_(i0)*sai1(k0,i0)/100
end do
mu_(j0,k0)=test
end do
end do

do j0=0,states
write(400,*)  mu_(j0,:)
end do


end 

!+++++++++++++++++++++++++++++++
function V(x)
implicit none
real::V,x,B
B=0.003906 
V=((X**4)/64)-((X**2)/4)+(x**3)*B
end
