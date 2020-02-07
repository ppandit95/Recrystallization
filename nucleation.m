function l=nucleation(N_i,N,lattice,time)
embryo=randi(N*N,N_i,1);%Creating array of indices of nucleated cells
i=fix(embryo(1:N_i,1)/N)+1;
j=rem(embryo(1:N_i,1),N);
for k=1:N_i
    lattice(i(k),j(k),1:2)=[1 time*10+k];%Nucleating the lattice
end
l=lattice;
end
