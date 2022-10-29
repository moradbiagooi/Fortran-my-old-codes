subroutine Im_t_p1
implicit none
real,allocatable,dimension(:,:)::sai0	
real,allocatable,dimension(:)::x_ ,V_
real,allocatable,dimension(:)::energy
integer::n ,i0 ,flag ,iE ,states
real::a,b,dx ,L,t_end,pi,dE	,norm  ,E
complex::i
real::v	,sai_min,sai_min_n  ,test
i=(0,1.)
t_end=.9
pi=3.141592
a=-5.
b=5.
dx=0.01
dE=0.0001
sai_min=0.000001
sai_min_n=0.001
states=5

L=b-a
n=int(L/dx)

allocate(sai0(0:states,0:n))
allocate(x_(0:n),V_(0:n))
allocate(energy(0:states))

do i0=0,n
x_(i0)=(real(i0)*dx)+a
V_(i0)=v(x_(i0))
end do



do iE=0,states
sai0(iE,0)=0.
sai0(iE,1)=sai_min
end do


open(400,file='energy_diagram.txt')
iE=0
do E=-1.5,10,dE
do i0=2,n
sai0(iE,i0)=-sai0(iE,i0-2)+2*(1-(dx**2)*(E-V_(i0-1)))*sai0(iE,i0-1)
end do

test=abs(sai0(iE,n))

if (test<sai_min_n .and. flag==0) then
flag=1
end if

if (test>sai_min_n .and. flag==1) then
flag=0
energy(iE)=E
iE=iE+1
print*,'--------------------'
if (iE>states) exit
end if

print*,E 
write(400,*)E,sai0(iE,n)


end do






do iE=0,states
norm=0.
do i0=0,n
norm=norm+ (sai0(iE,i0))**2
end do
norm=sqrt(norm)
if (norm==0) cycle
sai0(iE,:)=sai0(iE,:)/norm
end do
sai0=sai0*10






open(100,file='result.txt')
open(200,file='result_energy.txt')
open(300,file='potential.txt')
do i0=0,n
write(100,*) sai0(0,i0),sai0(1,i0),sai0(2,i0),sai0(3,i0)
write(300,*) v_(i0)
end do

do iE=0,states
write(200,*)  energy(iE)
end do

end 

!+++++++++++++++++++++++++++++++
