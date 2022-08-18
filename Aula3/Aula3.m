syms s %PRECISA POR SYMS PARA O MAT VER QUE É UMA VARIAVEL MATEMATICA

C = 1/(s*(s+2));
ct=ilaplace(C);%laplace inversa

t=0:0.01:1;%valores
plot(t,1/2 - exp(-2*t)/2);
%%
syms s

C = 1/(s*(s+4)*(s+8));
ilaplace(C);

t=0:0.01:1;%valores
plot(t,exp(-8*t)/32 - exp(-4*t)/16 + 1/32);
