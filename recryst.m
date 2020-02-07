%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     Simulation of Grain Recrystallization using Cellular Automata     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
N=400;%Size of the domain
lattice=zeros(N,N,2);%Initial uncrystallised state of the lattice
N_i=20;%initial nucleation density
N_d=5;%Subsequent nucleation density addition
count=1;
time=0;
while(time<10)
if time==0
    lattice=nucleation(N_i,N,lattice,time);
else
     lattice=nucleation(N_d,N,lattice,time);
end
 
%Calculating the activity for each cell based on Von Neumann Neighborhood
A=zeros(N);%Initialising activity for each cell
[A,Neighbor]=activitycalc(N,count,A,lattice);%Calculation of Activity for each cell
 count=1;
 p=0;
%Implementing growth rule
lattice=growth(A,count,lattice,Neighbor,time,p,N);
time=time+1;

 r=N;c=N;

           imagesc((1:c)+0.5, (1:r)+0.5, lattice(1:N,1:N,1));
           colormap(gray);                              
           axis equal     
           pause(0.2)
end