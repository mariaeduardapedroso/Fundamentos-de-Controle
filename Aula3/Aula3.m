syms s %PRECISA POR SYMS PARA O MAT VER QUE É UMA VARIAVEL MATEMATICA

C = 1/(s*(s+2));
ct=ilaplace(C);%laplace inversa

t=0:0.01:1;%valores
plot(t,1/2 - exp(-2*t)/2);
