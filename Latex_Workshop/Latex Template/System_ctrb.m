close all
clear 
clc
m=886000;%%Kg
c0=11060;%%Newtons
c1=109.44;%%N*s/m
c2=15.6168;%%N*s*s/m*m
ve=13.772;%%Average velocity
A=[0 1;0 -(c1/m+2*c2/m*ve)];
B=[0;1/m];
C=[0 1];
D=0;
Co=ctrb(A,B)
Rank=rank(Co)
unco = length(A) - rank(Co)
if(length(A) == rank(Co))
    disp('This System is Controllable.')
end